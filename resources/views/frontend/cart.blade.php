@extends('frontend.layouts.master')
@section('content')

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!--====== App Content ======-->
<div class="app-content">

    <!--====== Section 1 ======-->
    <div class="u-s-p-y-60">
        <div class="section__content">
            <div class="container">
                <div class="breadcrumb">
                    <div class="breadcrumb__wrap">
                        <ul class="breadcrumb__list">
                            <li class="has-separator">
                                <a href="{{ route('frontend.index') }}">Home</a>
                            </li>
                            <li class="is-marked">
                                <a href="{{ route('frontend.cart') }}">Cart</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section 1 ======-->

    <!--====== Section 2 ======-->
    <div class="">

        <div class="section__intro u-s-m-b-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section__text-wrap">
                            <h1 class="section__heading u-c-secondary">YOUR SHOPPING CART</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section 2 ======-->



    <div class="gridparentCartt container checkoutSubContainerParent">
        <!-- <div class="u-s-p-y-60">
    <div class="section__content"> -->
        <div class="container u-s-m-b-30cart">
            <div class="row width100vwREs">
                <form action="{{ route('cart.update') }}" method="POST">
                    @csrf
                    <div class="col-lg-12 col-md-12 col-sm-12 u-s-m-b-30cart">
                        <div class="table-responsive">
                            <table class="table-p">
                                <tbody>
                                    @php
                                        $total = 0;
                                    @endphp

                                    @foreach($cartproducts as $product)
                                    <!--====== Row ======-->
                                    <tr>
                                        <td>
                                            <div class="table-p__box">
                                                <div class="table-p__img-wrap">
                                                    @if($product->images->isNotEmpty())
                                                        <!-- Show product image -->
                                                        <img class="u-img-fluid"
                                                            data-src="{{ asset('public/' . $product->images->first()->image_path) }}"
                                                            alt="{{ $product->product_name }}">
                                                    @else
                                                        <!-- Show placeholder if no image -->
                                                        <img class="u-img-fluid"
                                                            data-src="{{ asset('public/client-side/images/no-image.png') }}"
                                                            alt="No image available">
                                                    @endif

                                                </div>
                                                <div class="table-p__info">
                                                    <span class="table-p__name">
                                                        <a href="">{{ $product->product_name }}</a>
                                                    </span>
                                                    <span class="table-p__category">
                                                        <a href="">{{ $product->category_name }}</a>
                                                    </span>
                                                </div>
                                            </div>
                                        </td>

                                        @php
                                            if (auth('customer')->check()) {
                                                // For authenticated users
                                                $cartItem = $cart->items()->where('product_code',
                                                $product->product_code)->first();
                                                $quantity = $cartItem ? $cartItem->quantity : 0;
                                                $subtotal = $product->sell_price * $quantity;
                                            } else {
                                                // For guest users
                                                $quantity = $cart[$product->product_code] ?? 0;
                                                $subtotal = $product->sell_price * $quantity;
                                                $total += $subtotal;
                                            }
                                        @endphp

                                        <td>
                                            <span class="table-p__price">{{ number_format($subtotal, 2) }}</span>
                                        </td>
                                        <td>
                                            <div class="table-p__input-counter-wrap">
                                                <!--====== Input Counter ======-->
                                                <div class="input-counter">
                                                    <span class="input-counter__minus fas fa-minus"></span>
                                                    <input class="input-counter__text input-counter--text-primary-style"
                                                        type="text" value="{{ $quantity }}"
                                                        name="quantities[{{ $product->product_code }}]" data-min="1"
                                                        data-max="1000">
                                                    <span class="input-counter__plus fas fa-plus"></span>
                                                </div>
                                                <!--====== End - Input Counter ======-->
                                            </div>
                                        </td>
                                        <td>
                                            <div class="table-p__del-wrap">
                                                <button type="submit" name="remove_product"
                                                    value="{{ $product->product_code }}"
                                                    class="far fa-trash-alt table-p__delete-link"
                                                    style="background: none; border: none; cursor: pointer;"></button>
                                            </div>
                                        </td>
                                    </tr>
                                    <!--====== End - Row ======-->
                                    @endforeach

                                </tbody>
                            </table>
                           <div style="margin:20px 0 0 0;">
                                <div class="route-box ">
                                    <div class="route-box__g1 d-flex flex-wrap justify-content-between w-100">
                                        <a class="route-box__link" href="{{ route('frontend.index') }}"><i
                                                class="fas fa-long-arrow-alt-left"></i>
                                            <span>CONTINUE SHOPPING</span></a>
                                
                               
                                        <button type="submit" name="clear_cart" class="route-box__link" @if($cartproducts->isEmpty()) disabled @endif>
                                            <i class="fas fa-trash"></i>
                                            <span>CLEAR CART</span>
                                        </button>
                                 <div class="d-flex justify-content-center">
                                           <button type="submit" name="update_cart" class="route-box__link" @if($cartproducts->isEmpty()) disabled @endif>
                                            <i class="fas fa-sync"></i>
                                            <span>UPDATE CART</span>
                                        </button>
                                 </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </form>
            </div>


        </div>
        <!-- </div>
                   </div> -->


        <!--====== Section 3 ======-->
        <div class="u-s-p-b-60">
            <!--====== Section Content ======-->
            <div class="section__content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 u-s-m-b-30cart">
                            <div class="row d-flex flex-column rightSideCardComponent">
                                @auth('customer')
                                <!-- Customer-specific content -->
                                @else
                                <div class="col-lg-12 u-s-m-b-30cart">
                                    <div class="f-cart__pad-box boxBg2">
                                        <h1 class="gl-h1">ESTIMATE SHIPPING</h1>
                                            <span class="gl-text u-s-m-b-30 cart">Enter your destination to get a
                                                shipping
                                                estimate.</span>
                                        <form action="{{ route('frontend.cart.getshippingcost') }}" method="post"
                                            id="shipping-form">
                                            @csrf

                                            <div class="u-s-m-b-30cart inputLableCart">
                                                <label class="gl-label" for="shipping-state">SELECT PROVINCE </label>
                                                <select class="select-box select-box--primary-style" name="province">
                                                    <option selected value="" disabled>Choose Province</option>
                                                    @foreach($provinces as $id => $province_name)
                                                        <option value="{{ $id }}" {{ $selectedProvince==$id ? 'selected'
                                                            : '' }}>
                                                            {{ $province_name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            
                                            <br/>

                                            <div class="u-s-m-b-30cart inputLableCart">
                                                <label class="gl-label" for="shipping-zip">SELECT CITY</label>
                                                <select class="select-box select-box--primary-style" id="city"
                                                    name="city">
                                                    <option selected value="" disabled>Choose City</option>
                                                </select>
                                            </div>
                                            
                                            <br/>

                                            <div class="u-s-m-b-30cart">
                                                <button type="submit" name="getshippingcost"
                                                    class="btn btn--e-transparent-brand-b-2" {{ $isCartEmpty
                                                    ? 'disabled' : '' }}>
                                                    CALCULATE SHIPPING
                                                </button>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                                @endauth

                                @php
                                    // Initialize variables for authenticated users
                                    if (auth('customer')->check()) {
                                        $customerId = auth('customer')->id();
                                        $cart = \App\Models\Cart::where('customer_id', $customerId)->first();
        
                                        if ($cart) {
                                            $shipping = $cart->shipping_cost_total;
                                            $total = $cart->subtotal;
                                        } else {
                                            $shipping = 0;
                                            $total = 0;
                                        }
                                        $amount_before_tax = $shipping + $total;
                                        $tax = 0;
                                        $grand_total = $amount_before_tax + $tax;
                                    } else {
                                        // For guest users, use session values
                                        $cart = session()->get('cart', []);
                                        $itemCount = count($cart); // Count the number of unique items in the cart
                                        $total = 0;
        
                                        foreach ($cart as $productCode => $quantity) {
                                            $product = \App\Models\Product::where('product_code', $productCode)->first();
                                            if ($product) {
                                                $total += $product->sell_price * $quantity;
                                            }  
                                        }
        
                                        $shipping = isset($shippingCost) ? $shippingCost : 0;
                                        $amount_before_tax = $shipping + $total;
                                        $tax = 0;
                                        $grand_total = $amount_before_tax + $tax;
                                    }
                                @endphp

                                <div class="col-lg-12 u-s-m-b-30cart mt29">
                                    <div class="f-cart__pad-box width100vwREs boxBg2">
                                        <div class="u-s-m-b-30cart">
                                            <table class="f-cart__table">
                                                @auth('customer')
                                                    <h3>Shipping Address</h3>
                                                    @if($default_shipping_addresses)
                                                        <p><span class="ri-map-pin-line material-symbols-outlined"></span>
                                                            {{ $default_shipping_addresses->zone->zone_name }},
                                                            {{ $default_shipping_addresses->city->city }},
                                                            {{ $default_shipping_addresses->province->province_name }}</p>
                                                    @else
                                                        <p><span class="ri-map-pin-line material-symbols-outlined"></span>No
                                                            Shipping
                                                            Address Available.</p>
                                                    @endif
                                                    <hr>
                                                @endauth
                                                <h2>Order Summary</h2>
                                                <tbody>
                                                    <tr>
                                                        <td>SHIPPING</td>
                                                        <td>{{ number_format($shipping, 2) }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>SUBTOTAL</td>
                                                        <td>{{ number_format($total, 2) }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>TAX (Incl)</td>
                                                        <td>{{ number_format($tax, 2) }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>GRAND TOTAL</td>
                                                        <td>{{ number_format($grand_total, 2) }}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <form class="f-cart" action="{{ route('frontend.checkout') }}">
                                            <div>
                                                <button class="btn btn--e-brand-b-2" type="submit" {{ $isCartEmpty
                                                    ? 'disabled' : '' }}>PROCEED TO CHECKOUT</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====== End - Section Content ======-->
        </div>
        <!--====== End - Section 3 ======-->
    </div>


</div>
<!--====== End - App Content ======-->

<script>
    $(document).ready(function () {
        var selectedCity = @json($selectedCity); // Get the selected city from Blade

        // Function to update city options based on province
        $('select[name="province"]').on('change', function () {
            var province_id = $(this).val();
            if (province_id) {
                $.ajax({
                    url: "/getCities/" + province_id, // Use relative URL
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        var $citySelect = $('select[name="city"]');
                        $citySelect.empty();

                        // Populate city options
                        $.each(data, function (key, value) {
                            var isSelected = (key === selectedCity) ? ' selected' : ''; // Check if this city should be selected
                            $citySelect.append('<option value="' + key + '"' + isSelected + '>' + value + '</option>');
                        });
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log("AJAX Error: ", textStatus, errorThrown);
                    }
                });
            } else {
                $('select[name="city"]').empty();
            }
        });

        // Trigger change event on load to populate cities based on initially selected province
        var initialProvince = $('select[name="province"]').val();
        if (initialProvince) {
            $('select[name="province"]').trigger('change');
        }
    });
</script>

@endsection