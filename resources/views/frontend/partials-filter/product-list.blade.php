@if ($shoplistproducts->isNotEmpty())
@foreach ($shoplistproducts as $shoplistproduct)
<div class="col-lg-3 col-md-4 col-sm-6 singleProduct">
    <div class="product-m">
        <div class="product-m__thumb">
            <a class="aspect aspect--bg-grey aspect--square u-d-block"
                href="{{ route('frontend.product-detail', $shoplistproduct->product_code) }}">
                  @if ($shoplistproduct->images->isNotEmpty())
                  <img class="aspect__img" src="{{ asset('public/' . $shoplistproduct->images->first()->image_path) }}" alt="{{ $shoplistproduct->product_name }}">
                  @else
                  <img class="aspect__img" src="{{ asset('public/client-side/images/no-image.png') }}" alt="{{ $shoplistproduct->product_name }}">
                  @endif
                </a>
        </div>
        <div class="product-m__content d-flex justify-content-evenly flex-column">

            <div class="product-m__category text-center product-o__name productName">

                <a href="{{ route('frontend.product-detail', $shoplistproduct->product_code) }}">{{ $shoplistproduct->category_name
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
                {{ $shoplistproduct->brand_name ? : "Brand Not Available" }}<span class="product-o__price">{{ $shoplistproduct->sell_price }}<span
                        class="product-o__discount">{{ $shoplistproduct->actual_price }}</span></span>
            </div>
            <div class="product-m__hover">

            </div>
        </div>


        <div class="prevQuickAddCart d-flex justify-content-evenly">

            <div class="quicklokandWishlist bg-info d-flex justify-content-evenly align-items-center"
                style="width:40%;">

                <div class="product-m__quick-look">
                    @php
                        $mrPrice = $shoplistproduct->mr_price;
                        $sellPrice = $shoplistproduct->sell_price;
                        $discountPercentage = $mrPrice > 0 ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) : 0;
                    @endphp
                    <a class="fas fa-search getQuickViewModal" data-modal="modal"
                   id="{{ $shoplistproduct->product_code }}|{{ $shoplistproduct->product_name}}|{{ $shoplistproduct->sell_price}}|{{$discountPercentage}}|{{ $shoplistproduct->mr_price}}|{{ $shoplistproduct->available_quantity}}|{{ $shoplistproduct->images->isNotEmpty() ? asset('public/' . $shoplistproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                        data-modal-id="#quick-look"
                        value="{{ $shoplistproduct->product_code }}"
                        data-tooltip="tooltip" data-placement="top" title="Quick Look"
                        style="color:white; font-size:1.2rem;"></a>
                </div>
                <div class="product-m__wishlist">
                    <a class="far fa-heart" href="#" data-tooltip="tooltip"
                        data-placement="top" title="Add to Wishlist"
                        style="color:white; font-size:1.2rem;"></a>
                </div>
            </div>
            <div class="product-m__add-cart Productoption addtoCartBtnHompepage"
                style="width:100%;">

                <a class="btn--e-brand getAddToCartModal" data-modal="modal"
                id="{{ $shoplistproduct->product_code }}|{{ $shoplistproduct->product_name}}|{{ $shoplistproduct->sell_price}}|{{ $shoplistproduct->available_quantity}}|{{ $shoplistproduct->images->isNotEmpty() ? asset('public/' . $shoplistproduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                    data-modal-id="#add-to-cart"
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

