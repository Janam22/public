@extends('frontend.layouts.master')
@section('content')
<!--====== App Content ======-->
<div class="app-content">
    <div class="section__text-wrap">
        <h1 class="section__heading u-c-secondary u-s-m-b-12">Let's Explore</h1>

        <span class="section__span u-c-silver">CHOOSE CATEGORY</span>
    </div>
    <!-- FILTER | CATEGORY  -->
      <div class="filter-container flex justify-between">
         <div class="filter-group">
            <select id="category-filter" class="filter-title">
                <option value="">Select Category</option>
                @foreach ($categories as $category)
                <option value="{{ $category->category_id }}">{{ $category->category_name }}</option>
                @endforeach
            </select>
        </div>
        <div class="filter-group">
            <select id="brand-filter" class="filter-title">
                <option value="">Select Brand</option>
                @foreach ($brands as $brand)   
                <option value="{{ $brand->brand_id }}">{{ $brand->brand_name }}</option>
                @endforeach
            </select>
        </div>
        <div class="filter-group">
            <select id="discount-filter" class="filter-title">
                <option value="">Discount</option>
                <option value="10.00">10% Off</option>
                <option value="20.00">20% Off</option>
                <option value="35.00">35% Off</option>
                <option value="50.00">50% Off</option>
            </select>
        </div>
        <div class="filter-group">
            <select id="price-filter" class="filter-title">
                <option value="">Price Filter</option>
                <option value="500 to 1K">500 to 1K</option>
                <option value="2K to 5K">2K to 5K</option>
                <option value="5K to 10K">5K to 10K</option>
                <option value="10K and Above">10K and Above</option>
            </select>
        </div>
    </div>
    <div class="container">
        <div class="filter__grid-wrapper u-s-m-t-30 parentOfRow" style="position: relative; height: 1173.75px;">
            <div class="row rowOfItems"  id="appendProducts">
                @if ($explores->isNotEmpty())
                @foreach ($explores as $explore)
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 itemsOfRow filter__item" id="product-list-filter"
                    style="position: absolute; left: 0px; top: 0px;">
                    <div class="product-o product-o--hover-on product-o--radius">
                        <a class="product-o__wrap"
                            href="{{ route('frontend.product-detail', $explore->product_code) }}">

                            <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                @if ($explore->images->isNotEmpty())
                                <img class="aspect__img"
                                    data-src="{{ asset('public/' . $explore->images->first()->image_path) }}"
                                    alt="{{ $explore->product_name }}">
                                @else
                                <img class="aspect__img"
                                    data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                    alt="{{ $explore->product_name }}">
                                @endif
                            </div>
                        </a>

                        <span class="product-o__category">

                            <a href="{{ route('frontend.product-detail', $explore->product_code) }}">{{ $explore->category_name }}</a></span>

                        <span class="product-o__name">

                            <a href="{{ route('frontend.product-detail', $explore->product_code) }}">{{ $explore->product_name }}</a></span>
                        <div class="product-o__rating gl-rating-style">
                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= floor($explore->average_rating))
                                                    <i class="fas fa-star"></i> <!-- Filled star -->
                                                @elseif ($i == ceil($explore->average_rating) && $explore->average_rating - floor($explore->average_rating) >= 0.5)
                                                    <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                @else
                                                    <i class="far fa-star"></i> <!-- Empty star -->
                                                @endif
                                            @endfor

                            <span class="product-o__review">({{ $explore->review_count }})</span>
                        </div>

                        <span class="product-o__price">Rs.{{ $explore->sell_price }}

                            <span class="product-o__discount">Rs.{{ $explore->mr_price }}</span></span>
                                    @php
                                    $mrPrice = $explore->mr_price;
                                    $sellPrice = $explore->sell_price;
                                
                                    // Avoid division by zero and negative percentages
                                    $discountPercentage = $mrPrice > 0 
                                        ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                        : 0;
                                    @endphp
                        <div class="quickvewandAddtocart">
                            <!-- quick view button    -->
                            <button class="Productoption quickViewBtnHompepage getQuickViewModal" data-modal="modal"
                              id="{{ $explore->product_code }}|{{ $explore->product_name}}|{{ $explore->sell_price}}|{{$discountPercentage}}|{{ $explore->mr_price}}|{{ $explore->available_quantity}}|{{ $explore->images->isNotEmpty() ? asset('public/' . $explore->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                data-modal-id="#quick-look" data-tooltip="tooltip"
                                data-placement="top" title="Quick View" value="{{ $explore->product_code }}"><i
                                    class="fas fa-search-plus">Quick
                                    View</i>
                            </button>

                            <button data-modal="modal" class="Productoption addtoCartBtnHompepage getAddToCartModal"
                            id="{{ $explore->product_code }}|{{ $explore->product_name}}|{{ $explore->sell_price}}|{{ $explore->available_quantity}}|{{ $explore->images->isNotEmpty() ? asset('public/' . $explore->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                data-modal-id="#add-to-cart" data-tooltip="tooltip"
                                data-placement="top" value="{{ $explore->product_code }}" title="Add to Cart"><i
                                    class="fas fa-shopping-cart">Add to Cart</i>
                            </button>
                        </div>
                    </div>
                </div>
                <!--====== End - Add to Cart Modal ======-->
                @endforeach
                @else
                <p>No products found in this price range.</p>
                @endif
            </div>
        </div>
    </div>
    <div style="padding: 10px; justify-content: center; display: flex;">
        {{ $explores->links('pagination::simple-bootstrap-5') }}
    </div>
    
    @endsection
    @section('customJs')
    
    <script>
        $(document).ready(function() {
            // Attach change event listener to all filters
            $('.filter-title').on('change', function() {
                // Get the selected values for category, brand, price range, and discount
                const selectedFilter = $(this).attr('id');
                
                // Initialize all filter variables to null
                let category = null;
                let brand = null;
                let priceRange = null;
                let discount = null;
        
                // Based on the selected filter, assign the corresponding value
                if (selectedFilter === 'category-filter') {
                    category = $('#category-filter').val();
                } else if (selectedFilter === 'brand-filter') {
                    brand = $('#brand-filter').val();
                } else if (selectedFilter === 'price-filter') {
                    priceRange = $('#price-filter').val();
                } else if (selectedFilter === 'discount-filter') {
                    discount = $('#discount-filter').val();
                }
        
                // Debugging logs
                console.log('Selected Category ID:', category);
                console.log('Selected Brand ID:', brand);
                console.log('Selected Price Range:', priceRange);
                console.log('Selected Discount:', discount);
        
                // AJAX request to fetch filtered products
                $.ajax({
                    url: '{{ route('frontend.partials-filter.explore-filter') }}',
                    method: 'GET',
                    data: {
                        category: category,
                        brand: brand,
                        price_range: priceRange,
                        discount: discount
                    },
                    success: function(response) {
                        console.log('Response:', response);
                        $('#appendProducts').html(response); // Assuming response contains HTML of filtered products
                    },
                    error: function(xhr) {
                        console.error('AJAX Error:', xhr);
                        $('#appendProducts').html('<p>Error retrieving products.</p>');
                    }
                });
            });
        });
    </script>
    @endsection