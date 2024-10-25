@if ($explores->isNotEmpty())
    @foreach ($explores as $explore)
    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item">
        <div class="product-o product-o--hover-on product-o--radius">
            <a class="product-o__wrap"
                href="{{ route('frontend.product-detail', $explore->product_code) }}">

                <div class="aspect aspect--bg-grey aspect--square u-d-block">
                    @if ($explore->images->isNotEmpty())
                    <img class="aspect__img"
                        src="{{ asset('public/' . $explore->images->first()->image_path) }}"
                        alt="{{ $explore->product_name }}">
                    @else
                    <img class="aspect__img"
                        src="{{ asset('public/client-side/images/no-image.png') }}"
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
                                                    $discountPercentage = $mrPrice > 0 ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) : 0;
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
    <p>No products found.</p>
    @endif
                                