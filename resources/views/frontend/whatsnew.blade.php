@extends('frontend.layouts.master')
@section('content')
<!--====== App Content ======-->
<div class="app-content">

    <div class="u-s-p-b-60">

        <!--====== Section Intro ======-->
        <div class="section__intro u-s-m-b-16">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section__text-wrap">
                            <h1 class="section__heading u-c-secondary u-s-m-b-12">SEE WHAT'S NEW HERE </h1>

                            <span class="section__span u-c-silver u-s-m-b-16">FIND PRODUCTS THAT ARE UPLOADED
                                RECENLY</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section Intro ======-->


        <!--====== Section Content ======-->
        <div class="section__content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        @if ($newcategories->isNotEmpty())
                            <div class="filter-category-container">
                                @foreach ($newcategories as $category)
                                    <div class="filter__category-wrapper">
                                         @if(!empty($category->category_id) && !empty($category->category_name))
                                   <button class="btn filter__btn filter__btn--style-2 whatsNew" type="button" data-filter="{{ $category->category_id }}">{{ $category->category_name }}</button>
                                @endif
                                    </div>
                                @endforeach
                            </div>
                        @endif
                        <div class=" u-s-m-t-30">
                            <div class="row" id="partials-filter-whats-new">
                                @if ($whatsnewproducts->isNotEmpty())
                                @foreach ($whatsnewproducts as $whatsnewproduct)
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item ">
                                        <div class="product-o product-o--hover-on product-o--radius">
                                            <a class="product-o__wrap"
                                                href="{{ route('frontend.product-detail', $whatsnewproduct->product_code) }}">
    
                                                <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                                    @if ($whatsnewproduct->images->isNotEmpty())
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/' . $whatsnewproduct->images->first()->image_path) }}"
                                                        alt="{{ $whatsnewproduct->product_name }}">
                                                    @else
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                                        alt="{{ $whatsnewproduct->product_name }}">
                                                    @endif
                                                </div>
                                            </a>
                                            <span class="product-o__category">
    
                                                <a
                                                    href="{{ route('frontend.product-detail', $whatsnewproduct->product_code) }}">{{
                                                    $whatsnewproduct->category_name
                                                    }}</a></span>
    
                                            <span class="product-o__name">
    
                                                <a
                                                    href="{{ route('frontend.product-detail', $whatsnewproduct->product_code) }}">{{
                                                    Str::limit($whatsnewproduct->product_name, 29, '...') }}</a></span>
                                            <div class="product-o__rating gl-rating-style">
                                                @for ($i = 1; $i <= 5; $i++)
                                                    @if ($i <= floor($whatsnewproduct->average_rating))
                                                        <i class="fas fa-star"></i> <!-- Filled star -->
                                                    @elseif ($i == ceil($whatsnewproduct->average_rating) && $whatsnewproduct->average_rating - floor($whatsnewproduct->average_rating) >= 0.5)
                                                        <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                    @else
                                                        <i class="far fa-star"></i> <!-- Empty star -->
                                                    @endif
                                                @endfor
    
                                                <span class="product-o__review">({{ $whatsnewproduct->review_count }})</span>
                                            </div>
    
                                            <span class="product-o__price">{{ $whatsnewproduct->sell_price }}
    
                                                <span class="product-o__discount">{{ $whatsnewproduct->mr_price
                                                    }}</span></span>
                                                    @php
                                                        $mrPrice = $whatsnewproduct->mr_price;
                                                        $sellPrice = $whatsnewproduct->sell_price;
                                                    
                                                        // Avoid division by zero and negative percentages
                                                        $discountPercentage = $mrPrice > 0 
                                                            ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                                            : 0;
                                                    @endphp
                                            <div class="quickvewandAddtocart">
                                                <!-- quick view button    -->
                                                <button class="Productoption quickViewBtnHompepage getQuickViewModal"
                                                    data-modal="modal"
                                                      id="{{ $whatsnewproduct->product_code }}|{{ $whatsnewproduct->product_name}}|{{ $whatsnewproduct->sell_price}}|{{$discountPercentage}}|{{ $whatsnewproduct->mr_price}}|{{ $whatsnewproduct->available_quantity}}|{{ $whatsnewproduct->images->isNotEmpty() ? asset('public/' . $whatsnewproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                    data-modal-id="#quick-look"
                                                    data-tooltip="tooltip" data-placement="top" title="Quick View"
                                                    value="{{ $whatsnewproduct->product_code }}"><i
                                                        class="fas fa-search-plus">Quick
                                                        View</i>
                                                </button>
    
                                                <button data-modal="modal" class="Productoption addtoCartBtnHompepage getAddToCartModal"
                                                    data-modal-id="#add-to-cart"
                                                    id="{{ $whatsnewproduct->product_code }}|{{ $whatsnewproduct->product_name}}|{{ $whatsnewproduct->sell_price}}|{{ $whatsnewproduct->available_quantity}}|{{ $whatsnewproduct->images->isNotEmpty() ? asset('public/' . $whatsnewproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                    data-tooltip="tooltip" data-placement="top"
                                                    value="{{ $whatsnewproduct->product_code }}" title="Add to Cart"><i
                                                        class="fas fa-shopping-cart">Add to Cart</i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                                @endif
                                
                                 <!--Quick View and Cart Modal  -->
                                @include('frontend.modal.quick-view-modal')
                                @include('frontend.modal.cart-modal')
                                <!--Quick View and Cart Modal  -->
                            </div>
                        </div>
                    </div>
                    <div style="padding: 10px; justify-content: center; display: flex;">
                        {{ $whatsnewproducts->links('pagination::simple-bootstrap-5') }}
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section Content ======-->
    </div>



</div>
<!--====== End - App Content ======-->

@endsection
@section('customJs')

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Attach event listener to category buttons
        var categoryButtons = document.querySelectorAll('.whatsNew');

        categoryButtons.forEach(function (button) {
            button.addEventListener('click', function (e) {
                e.preventDefault();

                // Get the category ID from the data-filter attribute
                var categoryId = this.getAttribute('data-filter');

                // Perform AJAX request to filter products by category
                fetch("{{ route('frontend.partials-filter.whats-new') }}", {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    },
                    body: JSON.stringify({
                        category_id: categoryId
                    })
                })
                    .then(function (response) {
                        return response.text(); // Get the HTML response as text
                    })
                    .then(function (responseText) {
                        document.getElementById('partials-filter-whats-new').innerHTML = responseText;
                    })
                    .catch(function (error) {
                        console.error("Error occurred: ", error);
                    });
            });
        });
    });
</script>

@endsection