@extends('frontend.layouts.master')
@section('content')

<style>
.star {
    font-size: 60px;
    cursor: pointer;
    color: lightgray;
}

.star.filled {
    color: var(--dynamic-header-color);
}
</style>

<!--====== App Content ======-->
<div class="app-content">

    <!--====== Section 1 ======-->
    <div class="u-s-p-t-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <!--====== Product Detail Zoom ======-->
                    <div class="pd u-s-m-b-30">
                        <div class="slider-fouc pd-wrap">
                            <div id="pd-o-initiate">

                            @if($productDetails && $productDetails->images->isNotEmpty())
                                @foreach($productDetails->images as $image)
                                    <div class="pd-o-img-wrap" data-src="{{ asset('public/' . $image->image_path) }}">
                                        <img class="u-img-fluid" data-src="{{ asset('public/' . $image->image_path) }}"
                                             data-zoom-image="{{ asset('public/' . $image->image_path) }}" alt="">
                                    </div>
                                @endforeach
                            @else
                            <div class="pd-o-img-wrap" data-src="{{ asset('public/client-side/images/no-image.png') }}">
                                <img class="u-img-fluid" data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                     data-zoom-image="{{ asset('public/client-side/images/no-image.png') }}" alt="">
                            </div>
                            @endif


                            </div>

                            {{-- <span class="pd-text">Click for larger zoom</span> --}}
                        </div>
                        <div class="u-s-m-t-15">
                            <div class="slider-fouc">
                                <div id="pd-o-thumbnail">

                                    @foreach($productDetails->images as $image)
                                    <div>
                                        <img class="u-img-fluid" data-src="{{ asset('public/' . $image->image_path) }}" alt="">
                                    </div>
                                    @endforeach


                                </div>
                            </div>
                        </div>
                    </div>
                    <!--====== End - Product Detail Zoom ======-->
                </div>
                <div class="col-lg-7">

                    <!--====== Product Right Side Details ======-->
                    <div class="pd-detail">
                        <div>

                            <span class="pd-detail__name">{{ $productDetails->product_name }}</span>
                        </div>
                        <div>
                            <div class="pd-detail__inline">

                                <span class="pd-detail__price">{{ $productDetails->sell_price }}</span>
                                @php
                                    $mrPrice = $productDetails->mr_price;
                                    $sellPrice = $productDetails->sell_price;
                                
                                    // Avoid division by zero and negative percentages
                                    $discountPercentage = $mrPrice > 0 
                                        ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                        : 0;
                                @endphp
                                <span class="pd-detail__discount">({{ $discountPercentage }}% OFF)</span><del
                                    class="pd-detail__del">{{ $productDetails->mr_price }}</del>
                            </div>
                        </div>
                        <div class="u-s-m-b-15">
                            <div class="pd-detail__rating gl-rating-style">
                                @for ($i = 1; $i <= 5; $i++)
                                    @if ($i <= floor($average_rating))
                                        <i class="fas fa-star"></i> <!-- Filled star -->
                                    @elseif ($i == ceil($average_rating) && $average_rating - floor($average_rating) >= 0.5)
                                        <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                    @else
                                        <i class="far fa-star"></i> <!-- Empty star -->
                                    @endif
                                @endfor

                                <span class="pd-detail__review u-s-m-l-4">

                                    <a data-click-scroll="#view-review">{{ $product_review_count }} Reviews</a></span>
                            </div>
                        </div>
                        <div class="u-s-m-b-15">
                            <div class="pd-detail__inline">
                                <span class="pd-detail__stock">{{ $productDetails->stock_quantity }} in stock</span>
                            </div>
                        </div>
                        <div class="u-s-m-b-15">

                            <span class="pd-detail__preview-desc">{{ $productDetails->product_description }}</span>
                        </div>
                        <div class="u-s-m-b-15">
                                <form class="pd-detail__form" method="POST" action="{{ route('cart.add') }}">
                                    @csrf
                                <div class="pd-detail-inline-2">
                                    <div class="u-s-m-b-15">

                                        <!--====== Input Counter ======-->
                                        <div class="input-counter">

                                            <span class="input-counter__minus fas fa-minus"></span>

                                            <input class="input-counter__text input-counter--text-primary-style"
                                                type="text" value="1" name="quantity" data-min="1" data-max="1000">

                                            <span class="input-counter__plus fas fa-plus"></span>
                                        </div>
                                        <!--====== End - Input Counter ======-->
                                    </div>
                                    <div class="u-s-m-b-15">
                                        <input type="hidden" name="product_code"
                                        value="{{ $productDetails->product_code }}">
                                        <button class="btn btn--e-brand-b-2" type="submit">Add to Cart</button>

                                        {{-- <button class="btn btn--e-brand-b-2" type="submit">Buy Now</button> --}}
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--====== End - Product Right Side Details ======-->
                </div>
            </div>
        </div>
    </div>

    <!--====== Product Detail Tab ======-->
    <div class="u-s-p-y-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="pd-tab">
                        <div class="u-s-m-b-30">
                            <ul class="nav pd-tab__list">
                                <li class="nav-item">

                                    <a class="nav-link active" data-toggle="tab" href="#pd-desc">DESCRIPTION</a>
                                </li>
                                <li class="nav-item">

                                    <a class="nav-link " id="view-review" data-toggle="tab" href="#pd-rev">REVIEWS

                                        <span>({{ $product_review_count }})</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">

                            <!--====== Tab 1 ======-->
                            <div class="tab-pane active" id="pd-desc">
                                <div class="pd-tab__desc">
                                    <div class="u-s-m-b-15">
                                        <p>{{ $productDetails->product_description }}</p>
                                    </div>
                                </div>
                            </div>
                            <!--====== End - Tab 1 ======-->



                            <!--====== Tab 3 ======-->
                            <div class="tab-pane fade show" id="pd-rev">
                                <div class="pd-tab__rev">
                                    
                                    <div class="u-s-m-b-30">
                                        <form class="pd-tab__rev-f2" method="post" action="{{ route('reviews.add') }}" id="rating-form">
                                            @csrf
                                            <h2 class="u-s-m-b-15">Add a Review</h2>

                                            <span class="gl-text u-s-m-b-15">Your email address will not be published.
                                                Required fields are marked *</span>

                                            <div class="rev-f2__group">

                                                <div>
                                                    <p class="u-s-m-b-30">
                                                        <label class="gl-label" for="reviewer-text">YOUR RATING
                                                            *</label>
                                                            @for ($i = 1; $i <= 5; $i++)
                                                                <span class="star" data-value="{{ $i }}">&#9733;</span>
                                                            @endfor
                                                    </p>

                                                    <input type="hidden" name="rating" id="rating" required>
                                                    <input type="hidden" name="product_code" value="{{ $productDetails->product_code }}">
                                                    <div id="rating-error" style="color: red; display: none; font-size:30px">Please select a rating.</div>

                                                    <p class="u-s-m-b-30">
                                                        <label class="gl-label" for="reviewer-text">YOUR REVIEW
                                                            *</label>
                                                        <textarea class="text-area text-area--primary-style"
                                                            id="reviewer-text" name="review_detail" required></textarea>
                                                    </p>
                                                </div>

                                                <div>
                                                    <p class="u-s-m-b-30">

                                                        <label class="gl-label" for="reviewer-name">NAME *</label>

                                                        <input class="input-text input-text--primary-style" value="{{ Auth::guard('customer')->check() ? Auth::guard('customer')->user()->full_name : '' }}" type="text"
                                                            id="reviewer-name" name="name" required {{ Auth::guard('customer')->check() ? 'disabled' : '' }}>
                                                    </p>
                                                    <p class="u-s-m-b-30">

                                                        <label class="gl-label" for="reviewer-email">EMAIL *</label>

                                                        <input class="input-text input-text--primary-style" value="{{ Auth::guard('customer')->check() ? Auth::guard('customer')->user()->email : '' }}" type="text"
                                                            id="reviewer-email" name="email" required {{ Auth::guard('customer')->check() ? 'disabled' : '' }}>
                                                    </p>
                                                    
                                                <button class="btn btn--e-brand-shadow" type="submit">SUBMIT</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                    
                                    <div class="u-s-m-b-30">
                                        <div class="pd-tab__rev-score">
                                            <div class="u-s-m-b-8">
                                                <h2>{{ $product_review_count }} Review(s) - {{ number_format($average_rating, 1) }} (Overall)</h2>
                                            </div>
                                            <div class="review-o__rating gl-rating-style u-s-m-b-8">
                                                @for ($i = 1; $i <= 5; $i++)
                                                    @if ($i <= floor($average_rating))
                                                        <i class="fas fa-star"></i> <!-- Filled star -->
                                                    @elseif ($i == ceil($average_rating) && $average_rating - floor($average_rating) >= 0.5)
                                                        <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                    @else
                                                        <i class="far fa-star"></i> <!-- Empty star -->
                                                    @endif
                                                @endfor
                                            </div>
                                            <div class="u-s-m-b-8">
                                                <h4>We want to hear from you!</h4>
                                            </div>

                                            <span class="gl-text">Tell us what you think about this item</span>
                                        </div>
                                    </div>

                                    
                                    <div class="u-s-m-b-30">
                                        <form class="pd-tab__rev-f1">
                                            <div class="rev-f1__group">
                                                <div class="u-s-m-b-15">
                                                    <h2>{{ $product_review_count }} Review(s) for {{ $productDetails->product_name }}</h2>
                                                </div>
                                            </div>
                                            
                                        @if ($reviews->isNotEmpty())
                                        @foreach ($reviews as $review)
                                            <div class="rev-f1__review">
                                                <div class="review-o u-s-m-b-15">
                                                    <div class="review-o__info u-s-m-b-8">

                                                        <span class="review-o__name">{{ $review->name }}</span>

                                                        <span class="review-o__date">{{ $review->created_at }}</span>
                                                    </div>
                                                    
                                                    <div class="review-o__rating gl-rating-style u-s-m-b-8">
                                                        @for ($i = 1; $i <= 5; $i++)
                                                            @if ($i <= $review->rating)
                                                                <i class="fas fa-star"></i> <!-- Filled star -->
                                                            @else
                                                                <i class="far fa-star"></i> <!-- Empty star -->
                                                            @endif
                                                        @endfor

                                                        <span>({{ $review->rating }})</span>
                                                    </div>
                                                    <p class="review-o__text">{{ $review->review_detail }}</p>
                                                </div>
                                            </div>
                                        @endforeach
                                        @else
                                            <div class="rev-f1__review">
                                                <div class="review-o u-s-m-b-15">
                                                    <div class="review-o__info u-s-m-b-8">
                                                        <span class="review-o__name">No reviews yet.</span>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif



                                            <!--</div>-->
                                        </form>
                                    </div>

                                </div>
                            </div>
                            <!--====== End - Tab 3 ======-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--====== End - Section 1 ======-->
</div>
<!--====== End - App Content ======-->
<div class="container">
    <!--====== Section 6 ======-->
    <div class="u-s-p-y-60">
    
        <!--====== Section Intro ======-->
        <div class="section__intro u-s-m-b-46">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section__text-wrap">
                            <h1 class="section__heading u-c-secondary u-s-m-b-12">You may also like</h1>
    
                            <span class="section__span u-c-silver">FIND NEW RELETED PRODUCTS</span>
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
                    @if($relatedProducts->isNotEmpty())
                    @foreach ($relatedProducts as $relatedProduct)
                    <div class="col-xl-3 col-lg-4 col-md-6 u-s-m-b-30">
                        <div class="product-o product-o--hover-on u-h-100">
                            <a class="product-o__wrap"
                                href="{{ route('frontend.product-detail', $relatedProduct->product_code) }}">
    
                                <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                    @if ($relatedProduct->images->isNotEmpty())
                                    <img class="aspect__img lazyimg" 
                                        data-src="{{ asset('public/' . $relatedProduct->images->first()->image_path) }}"
                                        alt="{{ $relatedProduct->product_name }}">
                                    @else
                                    <img class="aspect__img lazyimg" data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                        alt="{{ $relatedProduct->product_name }}">
                                    @endif
                                </div>
                            </a>
    
                            <span class="product-o__category">
    
                                <a href="shop-side-version-2.html">{{ $relatedProduct->category_name }}</a></span>
    
                            <span class="product-o__name">
    
                                <a href="{{ route('frontend.product-detail', $relatedProduct->product_code) }}">{{
                                    $relatedProduct->product_name }}</a></span>
                            <div class="product-o__rating gl-rating-style">
                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= floor($relatedProduct->average_rating))
                                                    <i class="fas fa-star"></i> <!-- Filled star -->
                                                @elseif ($i == ceil($relatedProduct->average_rating) && $relatedProduct->average_rating - floor($relatedProduct->average_rating) >= 0.5)
                                                    <i class="fas fa-star-half-alt"></i> <!-- Half star -->
                                                @else
                                                    <i class="far fa-star"></i> <!-- Empty star -->
                                                @endif
                                            @endfor
    
                                <span class="product-o__review">({{ $relatedProduct->review_count }})</span>
                            </div>
    
                            <span class="product-o__price">Rs.{{ $relatedProduct->sell_price }}
    
                                <span class="product-o__discount">Rs.{{ $relatedProduct->actual_price }}</span></span>
                                    @php
                                        $mrPrice = $relatedProduct->mr_price;
                                        $sellPrice = $relatedProduct->sell_price;
                                        $discountPercentage = $mrPrice > 0 
                                            ? round(((($mrPrice - $sellPrice) / $mrPrice) * 100), 2) 
                                            : 0;
                                    @endphp
                            <div class="quickvewandAddtocart">
                                <!-- quick view button    -->
                                <button class="Productoption quickViewBtnHompepage getQuickViewModal" data-modal="modal"
                                    data-modal-id="#quick-look"
                                    id="{{ $relatedProduct->product_code }}|{{ $relatedProduct->product_name}}|{{ $relatedProduct->sell_price}}|{{$discountPercentage}}|{{ $relatedProduct->mr_price}}|{{ $relatedProduct->available_quantity}}|{{ $relatedProduct->images->isNotEmpty() ? asset('public/' . $relatedProduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                    data-tooltip="tooltip" data-placement="top" title="Quick View"
                                    value="{{ $relatedProduct->product_code }}"><i class="fas fa-search-plus">Quick
                                        View</i>
                                </button>
    
                                <button data-modal="modal" class="Productoption addtoCartBtnHompepage getAddToCartModal"
                                    data-modal-id="#add-to-cart"
                                    id="{{ $relatedProduct->product_code }}|{{ $relatedProduct->product_name}}|{{ $relatedProduct->sell_price}}|{{ $relatedProduct->available_quantity}}|{{ $relatedProduct->images->isNotEmpty() ? asset('public/' . $relatedProduct->images->first()->image_path) : asset('/public/client-side/images/no-image.png') }}"
                                    data-tooltip="tooltip" data-placement="top" value="{{ $relatedProduct->product_code }}"
                                    title="Add to Cart"><i class="fas fa-shopping-cart">Add to Cart</i>
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
    </div>
    
    
<script>
    document.querySelectorAll('.star').forEach(star => {
        star.addEventListener('click', function() {
            const ratingValue = this.getAttribute('data-value');
            document.getElementById('rating').value = ratingValue;

            // Highlight stars
            document.querySelectorAll('.star').forEach(s => {
                s.classList.remove('filled');
                if (s.getAttribute('data-value') <= ratingValue) {
                    s.classList.add('filled');
                }
            });
            
            // Hide error message
            document.getElementById('rating-error').style.display = 'none';
            
        });
    });

    // Form submission handler
    document.getElementById('rating-form').addEventListener('submit', function(event) {
        const ratingValue = document.getElementById('rating').value;
        if (!ratingValue) {
            event.preventDefault(); // Prevent form submission
            document.getElementById('rating-error').style.display = 'block'; // Show error message
        }
    });

</script>

@endsection