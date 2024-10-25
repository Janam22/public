<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\OrderCancelReasons;
use Illuminate\Http\Request;

class OrderCancelController extends Controller
{
    
    public function index()
    {
        $cancelreasons = OrderCancelReasons::all();
        return view('backend.cancelreasons.index', compact('cancelreasons'));
    }
    
    public function add()
    {
        return view('backend.cancelreasons.add');
    }
    
    public function store(Request $request)
    {
        $request->validate([
            'reason_name' => 'required',
        ]);
        $cancelreason = new OrderCancelReasons();
        $cancelreason->reason_name = $request->reason_name;
        if ($cancelreason->save()) {
            session()->flash('success', 'Reason Added Successfully !');
        } else {
            session()->flash('error', 'Error occured while adding reason!');
        }
        return redirect()->route('backend.cancelreasons.index');
    }

    
    public function edit(Request $request)
    {
        $cancelreason = OrderCancelReasons::findOrFail($request->id);
        return view('backend.cancelreasons.edit', compact('cancelreason'));
    }

    public function update(Request $request, $id)
    {
        $cancelreason = OrderCancelReasons::findOrFail($id);
        $cancelreason->update($request->all());
        return redirect()->route('backend.cancelreasons.index')->with('success', 'Reason Detail updated successfully');
    }

    
    public function delete($id)
    {
        $cancelreason = OrderCancelReasons::findOrFail($id);
        $cancelreason->delete();
        return redirect()->route('backend.cancelreasons.index')->with('success', 'Reason deleted successfully');
    }

}
