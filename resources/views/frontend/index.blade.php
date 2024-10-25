@extends('frontend.layouts.master')
@section('content')
<!--====== App Content ======-->
<div class="app-content">

    <!-- crousal  -->
    <div class="crousalUpper-containerP container">

        <div class="crousalUpper-slider">
            @if ($carousel->isNotEmpty())
            @foreach ($carousel as $carouselItem)
                <!-- fade css -->
                <div class="crousalUpper-myslide crousalUpper-fade">
             
                    <img class="crousalUpper-slider_img"
                        data-src="{{ asset('public/storage/backend/carousel_images/' . $carouselItem->image_1) }}" />
                </div>
    
                <div class="crousalUpper-myslide crousalUpper-fade">
            
                    <img class="crousalUpper-slider_img"
                        data-src="{{ asset('public/storage/backend/carousel_images/' . $carouselItem->image_2) }}" />
                </div>
    
                <div class="crousalUpper-myslide crousalUpper-fade">
    
                    <img class="crousalUpper-slider_img"
                        data-src="{{ asset('public/storage/backend/carousel_images/' . $carouselItem->image_3) }}" />
                </div>
                <!-- /fade css -->
    
                <!-- onclick js -->
                <a class="crousalUpper-prev" onclick="crousalUpperPlusSlides(-1)"><i class="bx bx-chevron-left"></i></a>
                <a class="crousalUpper-next" onclick="crousalUpperPlusSlides(1)"><i class="bx bx-chevron-right"></i></a>
    
                <div class="crousalUpper-dotsbox" style="text-align: center">
                    <span class="crousalUpper-dot" onclick="crousalUpperCurrentSlide(1)"></span>
                    <span class="crousalUpper-dot" onclick="crousalUpperCurrentSlide(2)"></span>
                    <span class="crousalUpper-dot" onclick="crousalUpperCurrentSlide(3)"></span>
                </div>
                <!-- /onclick js -->
            @endforeach
            @endif
        </div>
    </div>
    <!-- end crousal  -->

    <!--====== Section 2 ======-->
    <div class="u-s-p-b-60">

        <!--====== Section Intro ======-->
        <div class="section__intro u-s-m-b-16">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section__text-wrap">
                            <h1 class="section__heading u-c-secondary u-s-m-b-12 headiiing">TOP TRENDING</h1>

                            <span class="section__span u-c-silver">CHOOSE CATEGORY</span>
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
                        @if ($categories->isNotEmpty())
                        <div class="filter-category-container">
                            {{-- <div class="filter__category-wrapper">
                                <button class="btn filter__btn filter__btn--style-1 js-checked" type="button"
                                    data-filter="*">ALL</button>
                            </div> --}}
                            @foreach ($categories as $category)
                            <div class="filter__category-wrapper">
                               @if(!empty($category->category_id) && !empty($category->category_name))
                                <button class="btn filter__btn filter__btn--style-1 topTrending" type="button" data-filter="{{ $category->category_id }}">{{ $category->category_name }}</button>
                               @endif
                            </div>
                            @endforeach
                        </div>
                        @endif
                        <div tyle="hidden" id="partials-filter-top-trending">
                            <div class="filter__grid-wrapper u-s-m-t-30">
                                <div class="row rowOfItems">
                                    @if($products->isNotEmpty())
                                    @foreach ($products as $product)
                                    <div class="col-xl-3 col-lg-4 col-md-6 u-s-m-b-30 filter__item itemsOfRow">
                                        <a class="product-o-link"
                                            href="{{ route('frontend.product-detail', $product->product_code) }}">
                                            <div class="product-o product-o--hover-on product-o--radius">

                                                <div class="product-o__wrap">
                                                    <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                                        @if($product->images->isNotEmpty())
                                                        <!-- Show product image -->
                                                        <img class="aspect__img"
                                                            data-src="{{ asset('public/' . $product->images->first()->image_path) }}"
                                                            alt="{{ $product->product_name }}">
                                                        @else
                                                        <!-- Show placeholder if no image -->
                                                        <img class="aspect__img"
                                                            data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                                            alt="No image available">
                                                        @endif

                                                    </div>

                                                </div>
                                                <span class="product-o__name productName">{{ $product->product_name }}</span>

                                        </a>
                                        <div class="product-o__rating gl-rating-style">
                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= floor($product->average_rating))
                                                    <i class="fas fa-star"></i> <!-- Filled star -->
                                                @elseif ($i == ceil($product->average_rating) && $product->average_rating - floor($product->average_rating) >= 0.5)
                                                    <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                @else
                                                    <i class="far fa-star"></i> <!-- Empty star -->
                                                @endif
                                            @endfor
                                            <span class="product-o__review">({{ $product->review_count }})</span>
                                        </div>{{ $product->brand_name ?: "Brand Not Available" }}
                                        <span class="product-o__price">{{ $product->sell_price }}<span class="product-o__discount">{{ $product->mr_price }}</span></span>
                                        @php
                                            $mrPrice = $product->mr_price;
                                            $sellPrice = $product->sell_price;
                                            $discountPercentage = $mrPrice > 0 
                                                ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                                : 0;
                                        @endphp
                                        <div class="quickvewandAddtocart">
                                            <!-- quick view button    -->
                                            <button class="Productoption quickViewBtnHompepage getQuickViewModal"
                                                data-modal="modal" data-modal-id="#quick-look"
                                                id="{{ $product->product_code }}|{{ $product->product_name}}|{{ $product->sell_price}}|{{$discountPercentage}}|{{ $product->mr_price}}|{{ $product->available_quantity}}|{{ $product->images->isNotEmpty() ? asset('public/' . $product->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                data-tooltip="tooltip" data-placement="top" title="Quick View"
                                                value="{{ $product->product_code }}"><i class="fas fa-search-plus">Quick
                                                    View</i>
                                            </button>

                                            <button data-modal="modal"
                                                class="Productoption addtoCartBtnHompepage getAddToCartModal"
                                                data-modal-id="#add-to-cart"
                                                id="{{ $product->product_code }}|{{ $product->product_name}}|{{ $product->sell_price}}|{{ $product->available_quantity}}|{{ $product->images->isNotEmpty() ? asset('public/' . $product->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                                data-tooltip="tooltip" data-placement="top"
                                                value="{{ $product->product_code }}" title="Add to Cart"><i
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
                </div>
                
                <div class="col-lg-12 loadMoreParent">
                    <div class="load-more">
                        <button class="btn btn--e-brand load-more-btn" type="button">Load More</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section Content ======-->

</div>
<!--====== End - Section 2 ======-->

<!--====== Section 4 ======-->
<div class="u-s-p-b-60">
    <!--====== Section Intro ======-->
    <div class="section__intro u-s-m-b-46">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__text-wrap">
                        <h1 class="section__heading u-c-secondary u-s-m-b-12">NEW ARRIVALS</h1>

                        <span class="section__span u-c-silver">GET UP FOR NEW ARRIVALS</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section Intro ======-->

    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="container">
            <div class="slider-fouc">
                <div class="owl-carousel product-slider" data-item="4">

                    @if ($newarriveproducts->isNotEmpty())
                    @foreach ($newarriveproducts as $newarriveproduct)
                    
                        <div class="u-s-m-b-30">
                            <div class="product-o product-o--hover-on">
                                <a class="product-o__wrap"
                                    href="{{ route('frontend.product-detail', $newarriveproduct->product_code) }}">
    
                                    <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                        @if ($newarriveproduct->images->isNotEmpty())
                                        <img class="aspect__img"
                                            data-src="{{ asset('public/' . $newarriveproduct->images->first()->image_path) }}"
                                            alt="{{ $newarriveproduct->product_name }}">
                                        @else
                                        <img class="aspect__img" data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                            alt="">
                                        @endif
                                    </div>
                                </a>
                                <span class="product-o__category">
    
                                    <a href="{{ route('frontend.product-detail', $newarriveproduct->product_code) }}">{{
                                        $newarriveproduct->category_name }}</a></span>
    
                                <span class="product-o__name">
                                    <a href="{{ route('frontend.product-detail', $newarriveproduct->product_code) }}">{{
                                        $newarriveproduct->product_name }}</a></span>
    
                                <span class="product-o__price">Rs.{{ $newarriveproduct->sell_price }}
    
                                    <span class="product-o__discount">Rs.{{ $newarriveproduct->mr_price
                                        }}</span></span>
                                        @php
                                            $mrPrice = $newarriveproduct->mr_price;
                                            $sellPrice = $newarriveproduct->sell_price;
                                            $discountPercentage = $mrPrice > 0 
                                                ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                                : 0;
                                        @endphp
                                <div class="quickvewandAddtocart">
                                    <!-- quick view button    -->
                                    <button class="Productoption quickViewBtnHompepage getQuickViewModal"
                                        data-modal="modal" data-modal-id="#quick-look"
                                        id="{{ $newarriveproduct->product_code }}|{{ $newarriveproduct->product_name}}|{{ $newarriveproduct->sell_price}}|{{$discountPercentage}}|{{ $newarriveproduct->mr_price}}|{{ $newarriveproduct->available_quantity}}|{{ $newarriveproduct->images->isNotEmpty() ? asset('public/' . $newarriveproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                        data-tooltip="tooltip" data-placement="top" title="Quick View"
                                        value="{{ $newarriveproduct->product_code }}"><i class="fas fa-search-plus">Quick
                                        View</i>
                                    </button>
                                    <button data-modal="modal" class="Productoption addtoCartBtnHompepage getAddToCartModal"
                                        data-modal-id="#add-to-cart"
                                        id="{{ $newarriveproduct->product_code }}|{{ $newarriveproduct->product_name}}|{{ $newarriveproduct->sell_price}}|{{ $newarriveproduct->available_quantity}}|{{ $newarriveproduct->images->isNotEmpty() ? asset('public/' . $newarriveproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
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
    </div>
    <!--====== End - Section Content ======-->
</div>
<!--====== End - Section 4 ======-->


<!--====== Section 5 ======-->
<div class="banner-bg lazyDiv" data-bg="{{ asset('public/client-side/images/banners/banner-bg.jpg') }}">

    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="banner-bg__countdown">
                        <div class="countdown countdown--style-banner" data-countdown="2024-10-30"></div>
                    </div>
                    <div class="banner-bg__wrap">
                        <div class="banner-bg__text-1">

                            <span class="u-c-white">Global</span>

                            <span class="u-c-secondary">Offers</span>
                        </div>
                        <div class="banner-bg__text-2">

                            <span class="u-c-secondary">Official Launch</span>

                            <span class="u-c-white">Don't Miss!</span>
                        </div>

                        <span class="banner-bg__text-block banner-bg__text-3 u-c-secondary">Enjoy Free Shipping when
                            you buy 2 items and above!</span>

                      
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section Content ======-->
</div>
<!--====== End - Section 5 ======-->


<!--====== Section 6 ======-->
<div class="u-s-p-y-60">

    <!--====== Section Intro ======-->
    <div class="section__intro u-s-m-b-46">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__text-wrap">
                        <h1 class="section__heading u-c-secondary u-s-m-b-12">FEATURED PRODUCTS</h1>

                        <span class="section__span u-c-silver">FIND NEW FEATURED PRODUCTS</span>
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
                @if($featureproducts->isNotEmpty())
                @foreach ($featureproducts as $featureproduct)
                    <div class="col-xl-3 col-lg-4 col-md-6 u-s-m-b-30">
                        <div class="product-o product-o--hover-on u-h-100">
                            <a class="product-o__wrap"
                                href="{{ route('frontend.product-detail', $featureproduct->product_code) }}">
    
                                <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                    @if ($featureproduct->images->isNotEmpty())
                                    <img class="aspect__img"
                                        data-src="{{ asset('public/' . $featureproduct->images->first()->image_path) }}"
                                        alt="{{ $featureproduct->product_name }}">
                                    @else
                                    <img class="aspect__img" data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                        alt="{{ $featureproduct->product_name }}">
                                    @endif
                                </div>
                            </a>
    
                            <span class="product-o__category">
    
                                <a href="{{ route('frontend.product-detail', $featureproduct->product_code) }}">{{
                                    $featureproduct->category_name }}</a></span>
    
                            <span class="product-o__name">
    
                                <a href="{{ route('frontend.product-detail', $featureproduct->product_code) }}">{{
                                    $featureproduct->product_name }}</a></span>
                            <div class="product-o__rating gl-rating-style">
                                                @for ($i = 1; $i <= 5; $i++)
                                                    @if ($i <= floor($featureproduct->average_rating))
                                                        <i class="fas fa-star"></i> <!-- Filled star -->
                                                    @elseif ($i == ceil($featureproduct->average_rating) && $featureproduct->average_rating - floor($featureproduct->average_rating) >= 0.5)
                                                        <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                    @else
                                                        <i class="far fa-star"></i> <!-- Empty star -->
                                                    @endif
                                                @endfor
    
                                <span class="product-o__review">({{ $featureproduct->review_count }})</span>
                            </div>
    
                            <span class="product-o__price">Rs. {{ $featureproduct->sell_price }}
    
                                <span class="product-o__discount">Rs. {{ $featureproduct->mr_price }}</span></span>
                                        @php
                                        $mrPrice = $featureproduct->mr_price;
                                        $sellPrice = $featureproduct->sell_price;
                                        $discountPercentage = $mrPrice > 0 
                                            ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                            : 0;
                                        @endphp
                            <div class="quickvewandAddtocart">
                                <!-- quick view button    -->
                                <button class="Productoption quickViewBtnHompepage getQuickViewModal" data-modal="modal"
                                data-modal-id="#quick-look" 
                             id="{{ $featureproduct->product_code }}|{{ $featureproduct->product_name}}|{{ $featureproduct->sell_price}}|{{$discountPercentage}}|{{ $featureproduct->mr_price}}|{{ $featureproduct->available_quantity}}|{{ $featureproduct->images->isNotEmpty() ? asset('public/' . $featureproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                               data-tooltip="tooltip"
                                data-placement="top" title="Quick View" value="{{ $featureproduct->product_code }}"><i
                                    class="fas fa-search-plus">Quick
                                    View</i>
                            </button>
    
                            <button data-modal="modal" class="Productoption addtoCartBtnHompepage getAddToCartModal"
                            data-modal-id="#add-to-cart" 
                            id="{{ $featureproduct->product_code }}|{{ $featureproduct->product_name}}|{{ $featureproduct->sell_price}}|{{ $featureproduct->available_quantity}}|{{ $featureproduct->images->isNotEmpty() ? asset('public/' . $featureproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                            data-tooltip="tooltip"
                            data-placement="top" value="{{ $featureproduct->product_code }}" title="Add to Cart"><i
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
    <!--====== End - Section Content ======-->
</div>
<!--====== End - Section 6 ======-->


<!--====== Section 7 ======-->
<div class="u-s-p-b-60">

    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="container">
            <div class="row">
                @if($carousel->isNotEmpty())
                @foreach ($carousel as $carouselItem)
                    <div class="col-lg-4 col-md-4 col-sm-6 u-s-m-b-30">
    
                        <a class="promotion" href="{{ route('frontend.explore') }}">
                            <div class="aspect aspect--bg-grey aspect--square">
    
                                <img class="aspect__img promotion__img"
                                    data-src="{{ asset('public/storage/backend/carousel_images/' . $carouselItem->image_1) }}"
                                    alt="">
                            </div>
                            <div class="promotion__content">
                                <div class="promotion__text-wrap">
                                    <div class="promotion__text-1">
    
                                        <span class="u-c-secondary">EXPLORE OUR</span>
                                    </div>
                                    <div class="promotion__text-2">
                                        <span class="u-c-brand">GENUINE</span>
                                    </div>
                                    <span class="u-c-secondary">PRODUCTS</span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 u-s-m-b-30">
    
                        <a class="promotion" href="{{ route('frontend.newarrival') }}">
                            <div class="aspect aspect--bg-grey aspect--square">
    
                                <img class="aspect__img promotion__img"
                                    data-src="{{ asset('public/storage/backend/carousel_images/' . $carouselItem->image_2) }}"
                                    alt="">
                            </div>
                            <div class="promotion__content">
                                <div class="promotion__text-wrap">
                                    <div class="promotion__text-1">
    
                                        <span class="u-c-secondary">PRODUCTS</span>
                                        <span class="u-c-brand">2024</span>
                                    </div>
                                    <div class="promotion__text-2">
                                        <span class="u-c-secondary">NEW ARRIVALS</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 u-s-m-b-30">
    
                        <a class="promotion" href="{{ route('frontend.whatsnew') }}">
                            <div class="aspect aspect--bg-grey aspect--square">
                                <img class="aspect__img promotion__img"
                                    data-src="{{ asset('public/storage/backend/carousel_images/' . $carouselItem->image_3) }}"
                                    alt="">
                            </div>
                            <div class="promotion__content">
                                <div class="promotion__text-wrap">
                                    <div class="promotion__text-1">
                                        <span class="u-c-secondary">WHAT"S NEW IN</span> <span class="u-c-brand">IN THIS YEAR?</span>
                                    </div>
                                </div>
                                <div class="promotion__text-2">
                                    <span class="u-c-brand">GET UP TO 10% OFF</span>
                                </div>
                            </div>
                    </div>
                    </a>
                @endforeach
                @endif
            </div>
        </div>
    </div>

</div>
<!--====== End - Section Content ======-->
</div>
<!--====== End - Section 7 ======-->


<!--====== Section 8 ======-->
<div class="u-s-p-b-60">

    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                    <div class="column-product">
                        <span class="column-product__title u-c-secondary u-s-m-b-25">SPECIAL PRODUCTS</span>
                        <ul class="column-product__list">
                            @if ($specialproducts->isNotEmpty())
                            @foreach ($specialproducts as $specialproduct)
                                <li class="column-product__item">
                                    <div class="product-l">
                                        <div class="product-l__img-wrap">
                                            <a class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
                                                href="{{ route('frontend.product-detail', $specialproduct->product_code) }}">
                                                @if ($specialproduct->images->isNotEmpty())
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/' . $specialproduct->images->first()->image_path) }}"
                                                        alt="{{ $specialproduct->product_name }}">
                                                @else
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                                        alt="{{ $specialproduct->product_name }}">
                                                @endif
                                            </a>
                                        </div>
                                        <div class="product-l__info-wrap">
                                            <span class="product-l__category"><a href="shop-side-version-2.html">{{ $specialproduct->category_name }}</a></span>
                                            <span class="product-l__name"><a href="{{ route('frontend.product-detail', $specialproduct->product_code) }}">{{$specialproduct->product_name}}</a></span>
                                            <span class="product-l__price">{{ $specialproduct->sell_price }}
                                                <span class="product-l__discount">{{ $specialproduct->mr_price }}</span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                            @endif
                        </ul>

                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                    <div class="column-product">
                        <span class="column-product__title u-c-secondary u-s-m-b-25">WEEKLY PRODUCTS</span>
                        <ul class="column-product__list">
                            @if ($weeklyproducts->isNotEmpty())
                            @foreach ($weeklyproducts as $weeklyproduct)
                                <li class="column-product__item">
                                    <div class="product-l">
                                        <div class="product-l__img-wrap">
                                            <a class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
                                                href="{{ route('frontend.product-detail', $weeklyproduct->product_code) }}">
                                                @if ($weeklyproduct->images->isNotEmpty())
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/' . $weeklyproduct->images->first()->image_path) }}"
                                                        alt="{{ $weeklyproduct->product_name }}">
                                                @else
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                                        alt="{{ $weeklyproduct->product_name }}">
                                                @endif
                                            </a>
                                        </div>
                                        <div class="product-l__info-wrap">
                                            <span class="product-l__category"><a href="shop-side-version-2.html">{{ $weeklyproduct->category_name }}</a></span>
                                            <span class="product-l__name"><a href="{{ route('frontend.product-detail', $weeklyproduct->product_code) }}">{{ $weeklyproduct->product_name }}</a></span>
                                            <span class="product-l__price">{{ $weeklyproduct->sell_price }}
                                                <span class="product-l__discount">{{ $weeklyproduct->mr_price }}</span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                            @endif
                        </ul>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
                    <div class="column-product">
                        <span class="column-product__title u-c-secondary u-s-m-b-25">FLASH PRODUCTS</span>
                        <ul class="column-product__list">
                            @if ($flashproducts->isNotEmpty())
                            @foreach ($flashproducts as $flashproduct)
                                <li class="column-product__item">
                                    <div class="product-l">
                                        <div class="product-l__img-wrap">
                                            <a class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
                                                href="{{ route('frontend.product-detail', $flashproduct->product_code) }}">
                                                @if ($flashproduct->images->isNotEmpty())
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/' . $flashproduct->images->first()->image_path) }}"
                                                        alt="">
                                                @else
                                                    <img class="aspect__img"
                                                        data-src="{{ asset('public/client-side/images/no-image.png') }}" alt="">
                                                @endif
                                            </a>
                                        </div>
                                        <div class="product-l__info-wrap">
                                            <div class="product-l__rating gl-rating-style">
                                                @for ($i = 1; $i <= 5; $i++)
                                                    @if ($i <= floor($flashproduct->average_rating))
                                                        <i class="fas fa-star"></i> <!-- Filled star -->
                                                    @elseif ($i == ceil($flashproduct->average_rating) && $flashproduct->average_rating - floor($flashproduct->average_rating) >= 0.5)
                                                        <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                    @else
                                                        <i class="far fa-star"></i> <!-- Empty star -->
                                                    @endif
                                                @endfor
                                            </div>
    
                                            <span class="product-l__category"><a href="{{ route('frontend.product-detail', $flashproduct->product_code) }}">{{ $flashproduct->category_name }}</a></span>
                                            <span class="product-l__name"><a href="{{ route('frontend.product-detail', $flashproduct->product_code) }}">{{ $flashproduct->product_name }}</a></span>
                                            <span class="product-l__price">{{ $flashproduct->sell_price }}
                                                <span class="product-l__discount">{{ $flashproduct->mr_price }}</span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section Content ======-->
</div>
<!--====== End - Section 8 ======-->


<!--====== Section 9 ======-->
<div class="u-s-p-b-60">

    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 u-s-m-b-30">
                    <div class="service u-h-100">
                        <div class="service__icon"><i class="fas fa-truck"></i></div>
                        <div class="service__info-wrap">

                            <span class="service__info-text-1">Low Shipping Cost</span>

                            <span class="service__info-text-2">Get your order in lowest shipping cost.</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 u-s-m-b-30">
                    <div class="service u-h-100">
                        <div class="service__icon"><i class="fas fa-redo"></i></div>
                        <div class="service__info-wrap">

                            <span class="service__info-text-1">Shop with Confidence</span>

                            <span class="service__info-text-2">Our Protection covers your purchase from click to
                                delivery</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 u-s-m-b-30">
                    <div class="service u-h-100">
                        <div class="service__icon"><i class="fas fa-headphones-alt"></i></div>
                        <div class="service__info-wrap">

                            <span class="service__info-text-1">24/7 Help Center</span>

                            <span class="service__info-text-2">Round-the-clock assistance for a smooth shopping
                                experience</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section Content ======-->
</div>
<!--====== End - Section 9 ======-->

<!--====== End - Section 12 ======-->
</div>
<!--====== End - App Content ======-->

<!--Quick View and cart Modal  -->
@include('frontend.modal.quick-view-modal')
@include('frontend.modal.cart-modal')
<!--Quick View and Cart Modal  -->

@endsection
@section('customJs')
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Attach event listener to category buttons
        var categoryButtons = document.querySelectorAll('.topTrending');

        categoryButtons.forEach(function (button) {
            button.addEventListener('click', function (e) {
                e.preventDefault();

                // Get the category ID from the data-filter attribute
                var categoryId = this.getAttribute('data-filter');

                // Perform AJAX request to filter products by category
                fetch("{{ route('frontend.partials-filter.top-trending-filter') }}", {
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
                        document.getElementById('partials-filter-top-trending').innerHTML = responseText;
                    })
                    .catch(function (error) {
                        console.error("Error occurred: ", error);
                    });
            });
        });
    });
</script>

@endsection