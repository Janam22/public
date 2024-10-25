@extends('frontend.layouts.master')
@section('content')
<!--====== App Content ======-->
<div class="app-content">

    <!--====== Section 1 ======-->
    <div class="u-s-p-y-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop-p">
                        <div class="shop-p__toolbar u-s-m-b-30">
                            <div class="shop-p__meta-wrap u-s-m-b-60">
                                <!--<span>You Searched For:</span>-->
                                <a class="gl-tag btn--e-brand-shadow" href="#" data-value="I am bikesh" id="bikesh"><button onclick="location.reload()" style="color: white;  font-size: 14px; font-weight: bold; font-family: ui-monospace;">Reset Filter</button></a>
                                <div class="shop-p__meta-text-2 d-flex justify-content-between">
                                    <!--<span class="shop-p__meta-text-1">FOUND 18 RESULTS</span>-->
                                     <span class="shop-p__meta-text-1"> FOUND @if(isset($sessionProductCount) && $sessionProductCount > 0) {{ $sessionProductCount }} @else 0 @endif RESULTS</span>
                                    <button class="fltrBtn Productoption quickViewBtnHompepage"
                                        style="font-size: 2rem; color: white; ">Filter</button>
                                </div>
                            </div>
                        </div>
                        <!-- ALL PRODUCT BOXES  -->
                        <div class="shop-p__collection productParentParent">
                            <div class="ssllll sliderHide">
                                <div class="shop-a" id="side-filter">
                                    <div class="shop-a__wrap">
                                        <div class="shop-a__inner gl-scroll">
                                            <div class="shop-w-master">
                                                <h1 class="shop-w-master__heading u-s-m-b-30"><i
                                                        class="fas fa-filter u-s-m-r-8"></i>
                                                    <span>FILTERS</span>
                                                </h1>
                                                 <div class="shop-w-master__sidebar">
                                                     
              <!--dropdown not working -->
                                                    <div class="u-s-m-b-30" style="display: none !important;">
                                                        <div class="shop-w">
                                                            <div class="shop-w__intro-wrap">
                                                                <h1 class="shop-w__h">CATEGORY</h1>
                                                                <span class="fas collapsed  fa-minus shop-w__toggle"
                                                                    data-target="#s-category"
                                                                    data-toggle="collapse"></span>
                                                            </div>
                                                            <div class="shop-w__wrap collapse" id="s-category">
                                                                <ul class="shop-w__category-list gl-scroll">
                                                                    @foreach($categories as $category)
                                                                    <li class="has-list pd-wrap">
                                                                        <a href="#" class="hedingCategory"
                                                                            id="hedingGetValue"
                                                                            data-id="{{ $category->category_id }}">{{
                                                                            $category->category_name}}</a>
                                                                            @if ($category->subcategory_id && $category->subcategory_name !== "NoSubCategory" )
                                                                                <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                                        <ul>
                                                                            <li>
                                                                                <a href="#"  data-id="{{ $category->subcategory_id }}" class="sub_category_class">
                                                                                    {{ $category->subcategory_name }}
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                        @endif
                                                                    </li>
                                                                    @endforeach
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>



<!--RE: dropdown working-->
   <div class="u-s-m-b-30 mb10">
    <div class="shop-w">
        <div class="shop-w__intro-wrap">
            <h1 class="shop-w__h">CATEGORY</h1>
            <span class="fas collapsed fa-minus shop-w__toggle"
                  data-target="#s-category"
                  data-toggle="collapse"></span>
        </div>
        <div class="shop-w__wrap collapse" id="s-category">
            <ul class="shop-w__category-list gl-scroll">
                @foreach($categories as $category)
                <li class="has-list pd-wrap">
                    <a href="#" class="hedingCategory"
                       id="hedingGetValue"
                       data-id="{{ $category->category_id }}">{{
                       $category->category_name }}</a>
                    @if ($category->subcategory_id && $category->subcategory_name !== "NoSubCategory" )
                        <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                        <ul class="subcategory-list" style="display: none;"> <!-- Added class and style -->
                            <li>
                                <a href="#" data-id="{{ $category->subcategory_id }}" class="sub_category_class">
                                    {{ $category->subcategory_name }}
                                </a>
                            </li>
                        </ul>
                    @endif
                </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>


<!--2nd-->
                                                    <div class="u-s-m-b-30" style="display:none !important">
                                                        <div class="shop-w">
                                                            <div class="shop-w__intro-wrap">
                                                                <h1 class="shop-w__h">PRICE</h1>
                                                                <span class="fas fa-minus collapsed  shop-w__toggle"
                                                                    data-target="#s-price"
                                                                    data-toggle="collapse"></span>
                                                            </div>
                                                            <div class="shop-w__wrap collapse" id="s-price">
                                                                <form id="priceFilterForm" class="shop-w__form-p">
                                                                    <div class="shop-w__form-p-wrap">
                                                                        
                                                                        <div class="d-flex justify-content-between w-100">
                                                                   
                                                                            <input
                                                                            style="width: 70px; height: 40px; font-size: 20px;"
                                                                                class=" input-text--primary-style"
                                                                                type="text" id="price-min" value="{{ session('min_price') ?? '' }}"
                                                                                placeholder="Min">
                                                                            <input
                                                                            style="width: 70px; height: 40px; font-size: 20px;"
                                                                                class=" input-text--primary-style"
                                                                                type="text" id="price-max" value="{{ session('max_price') ?? '' }}"
                                                                                placeholder="Max">
                                                                     
                                                                       </div>
                                                                        <div
                                                                            class="d-flex justify-content-center w-100">
                                                                            <button class="btn fa"
                                                                                type="submit">Apply</button>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                    <!--2nd with working dropdown -->
<div class="u-s-m-b-30">
    <div class="shop-w">
        <div class="shop-w__intro-wrap">
            <h1 class="shop-w__h">PRICE</h1>
            <span class="fas collapsed fa-minus shop-w__toggle"
                  data-target="#s-price"
                  data-toggle="collapse"></span>
        </div>
        <div class="shop-w__wrap collapse" id="s-price">
            <form id="priceFilterForm" class="shop-w__form-p">
                <div class="shop-w__form-p-wrap">
                    <div class="d-flex justify-content-between w-100">
                        <input
                            style="width: 70px; height: 40px; font-size: 20px;"
                            class="input-text--primary-style"
                            type="text" id="price-min" value="{{ session('min_price') ?? '' }}"
                            placeholder="Min">
                        <input
                            style="width: 70px; height: 40px; font-size: 20px;"
                            class="input-text--primary-style"
                            type="text" id="price-max" value="{{ session('max_price') ?? '' }}"
                            placeholder="Max">
                    </div>
                    <div class="d-flex justify-content-center w-100">
                        <button class="btn fa" type="submit">Apply</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>
                                                    <!--3rd not working dropdown-->
                                                    <div class="u-s-m-b-30" style="display:none !important;">
                                                        <div class="shop-w">
                                                            <div class="shop-w__intro-wrap">
                                                                <h1 class="shop-w__h">Brand</h1>

                                                                <span class="fas fa-minus collapsed  shop-w__toggle"
                                                                    data-target="#s-manufacturer"
                                                                    data-toggle="collapse"></span>
                                                            </div>
                                                            <div class="shop-w__wrap collapse" id="s-manufacturer">
                                                                @if ($brands->isNotEmpty())
                                                                    <ul class="shop-w__list-2">
                                                                        @foreach ($brands as $brand)
                                                                            <li>
                                                                                <div class="">
                                                                                    <input type="checkbox" class="brand-checkbox" value="{{ $brand->brand_id }}" data-brand-id="{{ $brand->brand_id }}">
                                                                                    <span  brand-data-id="{{ $brand->brand_id }}">{{ $brand->brand_name }}</span>
                                                                                </div>
                                                                            </li>
                                                                        @endforeach
                                                                    </ul>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--3rd with working dropdown -->
                                                    <div class="u-s-m-b-30">
    <div class="shop-w">
        <div class="shop-w__intro-wrap">
            <h1 class="shop-w__h">Brand</h1>
            <span class="fas fa-minus collapsed shop-w__toggle"
                  data-target="#s-manufacturer"
                  data-toggle="collapse"></span>
        </div>
        <div class="shop-w__wrap collapse" id="s-manufacturer">
            @if ($brands->isNotEmpty())
                <ul class="shop-w__list-2">
                    @foreach ($brands as $brand)
                        <li>
                            <div class="list__content">
                                <input type="checkbox" class="brand-checkbox brand-filter" 
                                       value="{{ $brand->brand_id }}" 
                                       data-brand-id="{{ $brand->brand_id }}">
                                <span brand-data-id="{{ $brand->brand_id }}">
                                    {{ $brand->brand_name }}
                                </span>
                            </div>
                        </li>
                    @endforeach
                </ul>
            @endif
        </div>
    </div>
</div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

            <div class="row productParent" id="appendProducts">
                                @if ($shoplistproducts->isNotEmpty())
                                @foreach ($shoplistproducts as $shoplistproduct)
                                    <div class="col-lg-3 col-md-4 col-sm-6 singleProduct">
                                        <div class="product-m">
                                            <div class="product-m__thumb">
    
                                                <a class="aspect aspect--bg-grey aspect--square u-d-block"
                                                    href="{{ route('frontend.product-detail', $shoplistproduct->product_code) }}">
                                                    @if ($shoplistproduct->images->isNotEmpty())
                                                    <img class="aspect__img" data-src="{{ asset('public/' . $shoplistproduct->images->first()->image_path) }}" alt="">
                                                    @else
                                                    <img class="aspect__img" data-src="{{ asset('public/client-side/images/no-image.png') }}" alt="">
                                                    @endif
                                                </a>
    
                                            </div>
                                            <div class="product-m__content d-flex justify-content-evenly flex-column">
    
                                                <div class="product-m__category text-center product-o__name productName">
    
                                                    <a
                                                        href="{{ route('frontend.product-detail', $shoplistproduct->product_code) }}">{{
                                                        $shoplistproduct->category_name
                                                        }}</a>
                                                </div>
                                                <div class="product-m__name text-center product-o__name productName">
    
                                                    <a
                                                        href="{{ route('frontend.product-detail', $shoplistproduct->product_code) }}">{{
                                                        $shoplistproduct->product_name }}</a>
                                                </div>
                                                <div class="product-m__rating gl-rating-style">
                                                    @for ($i = 1; $i <= 5; $i++)
                                                        @if ($i <= floor($shoplistproduct->average_rating))
                                                            <i class="fas fa-star"></i> <!-- Filled star -->
                                                        @elseif ($i == ceil($shoplistproduct->average_rating) && $shoplistproduct->average_rating - floor($shoplistproduct->average_rating) >= 0.5)
                                                            <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                        @else
                                                            <i class="far fa-star"></i> <!-- Empty star -->
                                                        @endif
                                                    @endfor
    
                                                    <span class="product-m__review">({{ $shoplistproduct->review_count }})</span>
                                                </div>
                                                <div>
                                                    {{ $shoplistproduct->brand_name ? : "Brand Not Available" }}<span class="product-o__price">{{
                                                        $shoplistproduct->sell_price }}<span class="product-o__discount">{{
                                                            $shoplistproduct->mr_price }}</span></span>
                                                </div>
                                                <div class="product-m__hover">
    
                                                </div>
                                            </div>
    
         <div class="quicklokandWishlist bg-info d-flex justify-content-evenly align-items-center"
                                                    style="width:100%;">
    
                                                    <div class="product-m__quick-look">
                                                         @php
                                                            $mrPrice = $shoplistproduct->mr_price;
                                                            $sellPrice = $shoplistproduct->sell_price;
                                                            $discountPercentage = $mrPrice > 0 ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) : 0;
                                                         @endphp
                                                        <a class="fas fa-search getQuickViewModal" data-modal="modal"
                                                          id="{{ $shoplistproduct->product_code }}|{{ $shoplistproduct->product_name}}|{{ $shoplistproduct->sell_price}}|{{$discountPercentage}}|{{ $shoplistproduct->mr_price}}|{{ $shoplistproduct->available_quantity}}|{{ $shoplistproduct->images->isNotEmpty() ? asset('public/' . $shoplistproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                            data-modal-id="#quick-look{{ $shoplistproduct->product_code }}"
                                                            value="{{ $shoplistproduct->product_code }}"
                                                            data-tooltip="tooltip" data-placement="top" title="Quick Look"
                                                            style="font-size:2.2rem;"></a>
                                                    </div>
    
                                                    <div class="product-m__wishlist">
                                                        <form method="post" action="{{ route('wishlist.add') }}">
                                                        @csrf
                                                            <button type="submit" style="font-size:2.2rem; background:none !important;"><span class="far fa-heart"></span></button>
                                                            <input type="hidden" value="{{ $shoplistproduct->product_code }}" name="product_code">
                                                        </form>
                                                    </div>
                                                </div>
                                            <div class="prevQuickAddCart d-flex justify-content-evenly">
    
                                           
                                                <div class="product-m__add-cart Productoption addtoCartBtnHompepage"
                                                    style="width:100%;">
    
                                                    <a class="btn--e-brand getAddToCartModal" data-modal="modal"
                                                    id="{{ $shoplistproduct->product_code }}|{{ $shoplistproduct->product_name}}|{{ $shoplistproduct->sell_price}}|{{ $shoplistproduct->available_quantity}}|{{ $shoplistproduct->images->isNotEmpty() ? asset('public/' . $shoplistproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                        data-modal-id="#add-to-cart{{ $shoplistproduct->product_code }}"
                                                        value="{{ $shoplistproduct->product_code }}">Add to Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                                @else
                                    <h1>Search No Result</h1>
                                    <p>We're sorry. We cannot find any matches for your search term.</p>
                                @endif
                            </div>
                        </div>
                                        

                        
                   
                    </div>
                         <div class="u-s-p-y-60">
                            <div style="padding: 10px; justify-content: center; display: flex;">
                                {{ $shoplistproducts->links('pagination::simple-bootstrap-5') }}
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section 1 ======-->
</div>
<!--====== End - App Content ======-->
@endsection
@section('customJs')

<script>
    $(document).ready(function() {
        // Object to store current filters
        let currentFilters = {
            category_id: null,
            sub_category_id: null,
            min_price: null,
            max_price: null,
            brand_ids: ""
        };
    
        // Filter by category
        $('.hedingCategory').on('click', function(e) {
            e.preventDefault();
            currentFilters.category_id = $(this).data('id');
            currentFilters.sub_category_id = null;
            currentFilters.brand_ids = "";
            filterProducts(currentFilters);
        });
    
        // Filter by sub category
        $('.sub_category_class').on('click', function(e) {
            e.preventDefault();
            currentFilters.sub_category_id = $(this).data('id');
            currentFilters.category_id = null; // Reset category_id
            currentFilters.brand_ids = "";
            filterProducts(currentFilters);
        });
    
        // Filter by price
        $('#priceFilterForm').on('submit', function(e) {
            e.preventDefault();
            currentFilters.min_price = $('#price-min').val();
            currentFilters.max_price = $('#price-max').val();
            filterProducts(currentFilters);
        });
    
    // Filter by brand
    // Filter by brand
    $('.brand-checkbox').on('change', function() {
        const selectedBrands = []; // Array to hold selected brand IDs
        $('.brand-checkbox:checked').each(function() {
            selectedBrands.push($(this).val().trim());
        });
        currentFilters.brand_ids = selectedBrands.join(',');
        currentFilters.sub_category_id = null;
        currentFilters.category_id = null;
        filterProducts(currentFilters);
    });
    
        // AJAX function to filter products
        function filterProducts(filterData) {
            console.log('Filter Data:', filterData); // Log the filter data
            $.ajax({
                url: '{{ route('frontend.partials-filter.product-list') }}',
                method: 'GET',
                data: filterData,
                success: function(response) {
                    console.log('Response:', response);
                    $('#appendProducts').html(response);
                },
                error: function() {
                    alert('Error filtering products');
                }
            });
        }
    });
</script>
@endsection


