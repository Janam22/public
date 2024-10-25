<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Reviews;

class ReviewRatingController extends Controller
{

    public function index()
    {
        $reviews = Reviews::with('product')
            ->orderBy('created_at', 'desc')
            ->get();
        return view('backend.ratings.index', compact('reviews'));
    }

    public function delete($id)
    {
        $review = Reviews::findOrFail($id);
        $review->delete();
        return redirect()->route('backend.ratings.index')->with('success', 'Review deleted successfully');
    }
    
}
