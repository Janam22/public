<?php

namespace App\Imports;

use App\Models\Product;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class ProductsImport implements ToCollection, WithHeadingRow, WithChunkReading
{
    use Importable;

    public function collection(Collection $rows)
    {
        foreach ($rows as $row) {
            
            // Retrieve data from the row
            $product_code = $row['product_code'];
            $product_name = $row['product_name'];
            $product_description = $row['product_description'];
            $unit_info = $row['unit_info'];
            $brand_id = $row['brand_id'];
            $subcategory_name = $row['subcategory_name'];
            $mr_price = $row['mr_price'];
            $sell_price = $row['sell_price'];
            $available_quantity = $row['available_quantity'];
            $brand_name = $row['brand_name'];
            $product_location = $row['product_location'];

            // Create or update the product record
            Product::updateOrCreate(
                ['product_code' => $product_code], // Unique identifier
                [
                    'product_name' => $product_name,
                    'product_description' => $product_description,
                    'unit_info' => $unit_info,
                    'brand_id' => $brand_id,
                    'subcategory_name' => $subcategory_name,
                    'mr_price' => $mr_price,
                    'sell_price' => $sell_price,
                    'available_quantity' => $available_quantity,
                    'brand_name' => $brand_name,
                    'product_location' => $product_location,
                ]
            );
        }
    }

    public function chunkSize(): int
    {
        return 1000; // Adjust chunk size as necessary
    }
}
