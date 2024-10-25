@if ($whatsnewproducts->isNotEmpty())
                                @foreach ($whatsnewproducts as $whatsnewproduct)
                                <div
                                    class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item ">
                                    <div class="product-o product-o--hover-on product-o--radius">
                                        <a class="product-o__wrap"
                                            href="{{ route('frontend.product-detail', $whatsnewproduct->product_code) }}">

                                            <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                                @if ($whatsnewproduct->images->isNotEmpty())
                                                <img class="aspect__img"
                                                    src="{{ asset('public/' . $whatsnewproduct->images->first()->image_path) }}"
                                                    alt="{{ $whatsnewproduct->product_name }}">
                                                @else
                                                <img class="aspect__img"
                                                    src="{{ asset('public/client-side/images/no-image.png') }}"
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

                                            <span class="product-o__discount">{{ $whatsnewproduct->actual_price
                                                }}</span></span>
                                                @php
                                                    $mrPrice = $whatsnewproduct->mr_price;
                                                    $sellPrice = $whatsnewproduct->sell_price;
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