<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Imports\ProductImagesImport;
use App\Imports\ProductsImport;
use App\Exports\ProductTemplateExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\ProductImages;

class ProductImagesController extends Controller
{

    public function index()
    {
        return view('backend.uploadproductimages.index');
    }

    public function import_image(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,csv'
        ]);

        Excel::import(new ProductImagesImport, $request->file('file'));

        return redirect()->back()->with('success', 'Import successful!');
    }
    
    public function upload_products(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,csv'
        ]);

        Excel::import(new ProductsImport, $request->file('file'));

        return redirect()->back()->with('success', 'Products upload successful!');
    }
    
    public function downloadTemplate()
    {
        return Excel::download(new ProductTemplateExport(), 'product_template.xlsx');
    }
    
}
