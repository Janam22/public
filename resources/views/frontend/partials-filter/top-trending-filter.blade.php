<div class="filter__grid-wrapper u-s-m-t-30" id="partials-filter-top-trending">
    <div class="row">
        @if($products->isNotEmpty())
        @foreach ($products as $product)

        <div
            class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item">
            <a class="product-o-link"
                href="{{ route('frontend.product-detail', $product->product_code) }}">
                <div class="product-o product-o--hover-on product-o--radius">

                    <div class="product-o__wrap">
                        <div class="aspect aspect--bg-grey aspect--square u-d-block">
                            @if ($product->images->isNotEmpty())
                            <img class="aspect__img" src="{{ asset('public/' . $product->images->first()->image_path) }}" alt="">
                            @else
                            <img class="aspect__img" src="{{ asset('public/client-side/images/no-image.png') }}" alt="">
                            @endif
                        </div>

                    </div>
                    <span class="product-o__name productName">{{ $product->product_name
                        }}</span>

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
            </div>{{ $product->brand_name ? : "Brand Not Available" }}
            <span class="product-o__price">{{ $product->sell_price }} <span
                    class="product-o__discount">{{ $product->mr_price }}</span></span>
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
               id="{{ $product->product_code }}|{{ $product->product_name}}|{{ $product->sell_price}}|{{$discountPercentage}}|{{ $product->mr_price}}|{{ $product->available_quantity}}|{{ $product->images->isNotEmpty() ? asset('public/' . $product->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                    data-modal="modal" data-modal-id="#quick-look"  
                    data-tooltip="tooltip" data-placement="top" title="Quick View"
                    value="{{ $product->product_code }}"><i class="fas fa-search-plus">Quick
                        View</i>
                </button>

                <button data-modal="modal" class="Productoption addtoCartBtnHompepage getAddToCartModal"
                id="{{ $product->product_code }}|{{ $product->product_name}}|{{ $product->sell_price}}|{{ $product->available_quantity}}|{{ $product->images->isNotEmpty() ? asset('public/' . $product->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                    data-modal-id="#add-to-cart"
                    data-tooltip="tooltip" data-placement="top"
                    value="{{ $product->product_code }}" title="Add to Cart"><i
                        class="fas fa-shopping-cart">Add to Cart</i>
                </button>
            </div>

        </div>
    </div>
    @endforeach
    @endif