<?php 

namespace App\Exports;

use App\Models\Product; // Adjust the namespace as per your Product model
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ProductTemplateExport implements FromCollection, WithHeadings
{
    public function collection()
    {
        return Product::select('product_code', 'product_name')->get()->map(function ($product) {
            return [
                'product_code' => $product->product_code,
                'product_name' => mb_convert_encoding($product->product_name, 'UTF-8', 'auto'),
                'image_path' => '', // Blank for user input
            ];
        });
    }

    public function headings(): array
    {
        return [
            'Product Code',
            'Product Name',
            'Image Path',
        ];
    }
}
