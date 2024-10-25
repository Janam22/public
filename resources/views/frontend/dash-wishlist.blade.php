@extends('frontend.layouts.app')
@section('contents')

<!--====== Section 2 ======-->
<div class="u-s-p-b-60">
    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="dash">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 ordersParent">
                        <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white u-s-m-b-30">
                            <div class="dash__pad-2 dashmyorders-parent">
                                <h1 class="dash__h1 u-s-m-b-14 d-block text-center fa">My Wishlist</h1>

                                <div class="m-order__list">

                            @if($wishitems->isEmpty())
                                <div class="no-items-message">
                                    <p>No items in your wishlist.</p>
                                </div>
                            @else
                                @foreach ($wishitems as $wishitem)
                                
                                    <form method="post" action="{{ route('cart.add') }}">
                                        @csrf
                                                <div class="manage-o__description">
                                                    <div class="description__container">
                                                        <div class="description__img-wrap">

                                                            @php
                                                                $firstImage = $wishitem->product->images->first();
                                                            @endphp

                                                            @if($firstImage && !empty($firstImage->image_path))
                                                                <img class="u-img-fluid" data-src="{{ asset('public/' . $firstImage->image_path) }}" alt="">
                                                            @else
                                                                <img class="u-img-fluid" data-src="{{ asset('public/client-side/images/no-image.png') }}" alt="No image available">
                                                            @endif
                                                        </div>
                                                        <div class="description-title">{{ $wishitem->product->product_name }}</div>
                                                        
                                                        <div class="description-title">
                                                            <span class="manage-o__text-2 u-c-silver"><span class="manage-o__text-2 u-c-secondary">{{ $wishitem->product->sell_price }}</span></span>
                                                        </div>
                                                        
                                                        <div class="description-title">
                                                            <div class="input-counter">

                                                                <span class="input-counter__minus fas fa-minus"></span>

                                                                <input class="input-counter__text input-counter--text-primary-style"
                                                                    type="text" value="1" name="quantity" data-min="1" data-max="1000">

                                                                <span class="input-counter__plus fas fa-plus"></span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="description__info-wrap">
                                                            <input type="hidden" name="product_code" value="{{ $wishitem->product_code }}">
                                                            <div class="dash__link dash__link--brand">
                                                                <button type="submit" class="dngrBtn txtnormal">Add to Cart</button>
                                                            </div>

                                                    </div>
                                                </div>
                                    </form>
                                @endforeach
                                </div>

                            @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section Content ======-->
</div>
<!--====== End - Section 2 ======-->

@endsection

@section('customJs')

@endsection
