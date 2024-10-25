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
                            <h1 class="section__heading u-c-secondary u-s-m-b-12">New Arrival</h1>

                            <span class="section__span u-c-silver u-s-m-b-16">FIND PRODUCTS THAT ARE MOST SELLING</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section Intro ======-->


        <!-- ====== Section Content ====== | ALL NEW ARRIVAL PRODUCT APPEARS HERE -->
        <div class="section__content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="filter__grid-wrapper u-s-m-t-30 parentOfRow">
                            <div class="row rowOfItems">
                                @if ($newarriveproducts->isNotEmpty())
                                @foreach ($newarriveproducts as $newarriveproduct)
                                <div
                                    class="col-xl-3 itemsOfRow col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item {{ $newarriveproduct->category_id }}">
                                    <div class="product-o product-o--hover-on product-o--radius">
                                        <a class="product-o__wrap"
                                            href="{{ route('frontend.product-detail', $newarriveproduct->product_code) }}">

                                            <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                                @if ($newarriveproduct->images->isNotEmpty())
                                                <img class="aspect__img"
                                                    data-src="{{ asset('public/' . $newarriveproduct->images->first()->image_path) }}"
                                                    alt="{{ $newarriveproduct->product_name }}">
                                                @else
                                                <img class="aspect__img"
                                                    data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                                    alt="{{ $newarriveproduct->product_name }}">
                                                @endif
                                            </div>
                                        </a>
                                        <span class="product-o__category">

                                            <a
                                                href="{{ route('frontend.product-detail', $newarriveproduct->product_code) }}">{{
                                                $newarriveproduct->category_name
                                                }}</a></span>

                                        <span class="product-o__name">

                                            <a
                                                href="{{ route('frontend.product-detail', $newarriveproduct->product_code) }}">{{
                                                $newarriveproduct->product_name }}</a></span>
                                        <div class="product-o__rating gl-rating-style">
                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= floor($newarriveproduct->average_rating))
                                                    <i class="fas fa-star"></i> <!-- Filled star -->
                                                @elseif ($i == ceil($newarriveproduct->average_rating) && $newarriveproduct->average_rating - floor($newarriveproduct->average_rating) >= 0.5)
                                                    <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                @else
                                                    <i class="far fa-star"></i> <!-- Empty star -->
                                                @endif
                                            @endfor

                                            <span class="product-o__review">({{ $newarriveproduct->review_count }})</span>
                                        </div>

                                        <span class="product-o__price">{{ $newarriveproduct->sell_price }}

                                            <span class="product-o__discount">{{ $newarriveproduct->mr_price
                                                }}</span></span>
                                                @php
                                                    $mrPrice = $newarriveproduct->mr_price;
                                                    $sellPrice = $newarriveproduct->sell_price;
                                                
                                                    // Avoid division by zero and negative percentages
                                                    $discountPercentage = $mrPrice > 0 
                                                        ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                                        : 0;
                                                @endphp
                                        <div class="quickvewandAddtocart">
                                            <!-- quick view button    -->
                                            <button class="Productoption quickViewBtnHompepage getQuickViewModal"
                                                data-modal="modal"
                                                id="{{ $newarriveproduct->product_code }}|{{ $newarriveproduct->product_name}}|{{ $newarriveproduct->sell_price}}|{{$discountPercentage}}|{{ $newarriveproduct->mr_price}}|{{ $newarriveproduct->available_quantity}}|{{ $newarriveproduct->images->isNotEmpty() ? asset('public/' . $newarriveproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                data-modal-id="#quick-look"
                                                data-tooltip="tooltip" data-placement="top" title="Quick View"
                                                value="{{ $newarriveproduct->product_code }}"><i
                                                    class="fas fa-search-plus">Quick
                                                    View</i>
                                            </button>

                                            <button data-modal="modal" class="Productoption addtoCartBtnHompepage getAddToCartModal"
                                             id="{{ $newarriveproduct->product_code }}|{{ $newarriveproduct->product_name}}|{{ $newarriveproduct->sell_price}}|{{ $newarriveproduct->available_quantity}}|{{ $newarriveproduct->images->isNotEmpty() ? asset('public/' . $newarriveproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                data-modal-id="#add-to-cart"
                                                data-tooltip="tooltip" data-placement="top"
                                                value="{{ $newarriveproduct->product_code }}" title="Add to Cart"><i
                                                    class="fas fa-shopping-cart">Add to Cart</i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                    {{-- <div class="col-lg-12">
                        <div class="load-more">

                            <button class="btn btn--e-brand" type="button">Load More</button>
                        </div>
                    </div> --}}

                </div>
            </div>
        </div>
        <!--====== End - Section Content ======-->
    </div>
                        <div style="padding: 10px; justify-content: center; display: flex;">
                        {{ $newarriveproducts->links('pagination::simple-bootstrap-5') }}
                    </div>
</div>
<!--====== End - App Content ======-->
@endsection