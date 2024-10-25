@extends('frontend.layouts.master')
@section('content')


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--====== App Content ======-->
<div class="app-content">

    <!--====== Section 1 ======-->
    <div class="u-s-p-y-60">

        <!--====== Section Content ======-->
        <div class="section__content">
            <div class="container">
                <div class="breadcrumb">
                    <div class="breadcrumb__wrap">
                        <ul class="breadcrumb__list">
                            <li class="has-separator">
                                <a href="{{ route('frontend.index') }}">Home</a>
                            </li>
                            <li class="is-marked">
                                <a href="{{ route('frontend.checkout') }}">Checkout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section 1 ======-->

    <!--====== Section 3 ======-->
    <div class="u-s-p-b-60">

        <!--====== Section Content ======-->
        <div class="section__content">
            <div class="container">
                <div class="checkout-f">
                    <div class="row checkoutROw width100vw">

                        <!-- For Non-Authenticated Users -->
                        <div class="col-lg-12">

                            <h1 class="checkout-f__h1 text-center fa d-block">ORDER SUMMARY</h1>

                            <!--====== Order Summary ======-->
                            <div class="o-summary checkoutSubContainerParent">




                                <div class="shippingAndCartItemParent ">

                                    @auth('customer')
                                    @else
                                    <!-- For Authenticated Users -->
                                    <div class="col-lg-12 checkoutPageForm">
                                        <h1 class="checkout-f__h1 fa mx-auto text-center d-block">DELIVERY INFORMATION
                                        </h1>
                                        <form class="checkout-f__delivery" method="POST"
                                            action="{{ route('frontend.delivery.information') }}">
                                            @csrf
                                            <div class="u-s-m-b-30 checkoutSubContainerParent">


                                                <!--====== First Name, Last Name ======-->
                                                <div class="gl-inline">
                                                    <div class="u-s-m-b-15">
                                                        <label class="gl-labelCheckout" for="billing-fname">YOUR FULL
                                                            NAME *</label>
                                                        <input class="input-text input-text--primary-style"
                                                            name="full_name"
                                                            value="{{ $deliveryInformation['full_name'] ?? '' }}"
                                                            type="text" id="billing-fname" required>
                                                    </div>
                                                </div>
                                                <!--====== End - First Name, Last Name ======-->

                                                <!--====== E-MAIL ======-->
                                                <div class="u-s-m-b-15">
                                                    <label class="gl-labelCheckout" for="billing-email">E-MAIL *</label>
                                                    <input class="input-text input-text--primary-style"
                                                        name="invoice_email"
                                                        value="{{ $deliveryInformation['invoice_email'] ?? '' }}"
                                                        type="text" id="billing-email" required>
                                                </div>
                                                <!--====== End - E-MAIL ======-->

                                                <!--====== PHONE ======-->
                                                <div class="u-s-m-b-15">
                                                    <label class="gl-labelCheckout" for="billing-phone">PHONE *</label>
                                                    <input class="input-text input-text--primary-style" name="phone"
                                                        value="{{ $deliveryInformation['phone'] ?? '' }}" type="text"
                                                        id="billing-phone" required>
                                                </div>
                                                <!--====== End - PHONE ======-->

                                                <!--====== STATE/PROVINCE ======-->
                                                <div class="u-s-m-b-15">
                                                    <label class="gl-labelCheckout" for="billing-state">STATE/PROVINCE
                                                        *</label>
                                                    <select
                                                        class="select-box input-text--primary-style select-box--primary-style"
                                                        name="province" id="billing-state" required>
                                                        <option selected value="" disabled>Choose Province</option>
                                                        @foreach($provinces as $id => $province_name)
                                                        <option value="{{ $id }}" {{ $selectedProvince==$id ? 'selected'
                                                            : '' }}>
                                                            {{ $province_name }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <!--====== End - STATE/PROVINCE ======-->


                                                <!--====== Town / City ======-->
                                                <div class="u-s-m-b-15">
                                                    <label class="gl-labelCheckout" for="billing-town-city">TOWN/CITY
                                                        *</label>
                                                    <select
                                                        class="select-box input-text--primary-style select-box--primary-style"
                                                        id="city" name="city">
                                                        <option selected value="" disabled>Choose City</option>
                                                    </select>
                                                </div>
                                                <!--====== End - Town / City ======-->

                                                <div class="u-s-m-b-15">
                                                    <label class="gl-labelCheckout" for="billing-town-city">Zone
                                                        *</label>
                                                    <select
                                                        class="select-box input-text--primary-style select-box--primary-style"
                                                        id="zone" name="zone">
                                                        <option selected value="" disabled>Choose Zone</option>
                                                    </select>
                                                </div>

                                                <div class="u-s-m-b-15">
                                                    <label class="gl-labelCheckout" for="billing-street">LANDMARK
                                                        (OPTIONAL) *</label>
                                                    <input class="input-text input-text--primary-style" type="text"
                                                        id="landmark" name="landmark"
                                                        value="{{ $deliveryInformation['landmark'] ?? '' }}"
                                                        placeholder="Famous Place near you">
                                                </div>

                                                <!--====== Street Address ======-->
                                                <div class="u-s-m-b-15">
                                                    <label class="gl-labelCheckout" for="billing-street">STREET ADDRESS/
                                                        LOCAL AREA *</label>
                                                    <input class="input-text input-text--primary-style" type="text"
                                                        id="billing-street" name="street_address"
                                                        value="{{ $deliveryInformation['address'] ?? '' }}"
                                                        placeholder="House name and street name" required>
                                                </div>


                                                <!--====== End - Street Address ======-->

                                                {{-- <div class="u-s-m-b-10">
                                                    <label class="gl-labelCheckout" for="order-note">ORDER NOTE</label>
                                                    <textarea class="text-area text-area--primary-style"
                                                        name="order_note" id="order-note"></textarea>
                                                </div> --}}

                                            </div>
                                            <div class="d-flex justify-center">
                                                <button style="width: 30%;" class="btn btn--e-transparent-brand-b-2" type="submit">SAVE</button>
                                            </div>
                                        </form>
                                    </div>
                                    @endauth

                                    <!-- SHIPPING ADDRESS  -->
                                    <div class="o-summary__section u-s-m-b-30">
                                        <div class="o-summary__box">
                                            <h1 class="checkout-f__h1">SHIPPING ADDRESS</h1>
                                            <div class="ship-b">
                                                <span class="ship-b__text">Ship to:</span>
                                                @auth('customer')
                                                    @if($default_shipping_addresses)
                                                        <div class="ship-b__box u-s-m-b-10">
                                                            <p>{{ $default_shipping_addresses->full_name }} {{ $default_shipping_addresses->phone }}</p>
                                                        </div>
                                                        <div class="ship-b__box u-s-m-b-10">
                                                            <p>

                                                                <span style="color:white; background-color: {{ $default_shipping_addresses->address_type === 'H' ? '#ff4500' : '#0b4d93' }}; padding: 2px 5px; border-radius: 3px;">
                                                                    @if($default_shipping_addresses->address_type === 'H')
                                                                        HOME
                                                                    @elseif($default_shipping_addresses->address_type === 'O')
                                                                        OFFICE 
                                                                    @else
                                                                        {{ $default_shipping_addresses->address_type }} <!-- In case it's something else -->
                                                                    @endif
                                                                </span>

                                                                {{ $default_shipping_addresses->address }}, 
                                                                {{ $default_shipping_addresses->zone->zone_name }},
                                                                {{ $default_shipping_addresses->city->city }},
                                                                {{ $default_shipping_addresses->province->province_name }}
                                                            </p>
                                                        </div>
                                                    @else
                                                        <p class="ship-b__p">No Shipping Address available.</p>
                                                    @endif
                                                @else
                                                    @if($deliveryInformation)
                                                        @php
                                                            // Extract variables for easier readability
                                                            $address = $deliveryInformation['address'] ?? '';
                                                            $cityName = $deliveryInformation['city_name'] ?? '';
                                                            $provinceName = $deliveryInformation['province_name'] ?? '';

                                                            // Check if any of the values are missing
                                                            $hasMissingValues = empty($address) || empty($cityName) ||
                                                            empty($provinceName);
                                                        @endphp

                                                        @if($hasMissingValues)
                                                            <p class="ship-b__p">Incomplete delivery information. Please provide
                                                            all required details.</p>
                                                        @else
                                                            <p class="ship-b__p">
                                                                {{ $address }},
                                                                {{ $cityName->city }},
                                                                {{ $provinceName->province_name }}
                                                            </p>
                                                        @endif
                                                    @else
                                                        <p class="ship-b__p">No delivery information available.</p>
                                                    @endif

                                                @endauth
                                            </div>
                                        </div>
                                    </div>
                                    

                                    <!-- CART ITEMS  -->
                                    <div class="o-summary__section u-s-m-b-30 margin20">
                                        <div class="o-summary__item-wrap gl-scroll checkoutProduct">

                                            @php
                                                $subtotal = 0;
                                                $total = 0;
                                            @endphp
                                            @foreach($cartproducts as $product)
                                            <div class="o-card">
                                                <div class="o-card__flex">
                                                    <div class="o-card__img-wrap">
                                                        @if($product->images->isNotEmpty())
                                                            <!-- Show product image -->
                                                            <img class="u-img-fluid"
                                                                src="{{ asset('public/' . $product->images->first()->image_path) }}"
                                                                alt="{{ $product->product_name }}">
                                                        @else
                                                            <!-- Show placeholder if no image -->
                                                            <img class="u-img-fluid"
                                                                src="{{ asset('public/client-side/images/no-image.png') }}"
                                                                alt="No image available">
                                                        @endif

                                                    </div>
                                                    <div class="o-card__info-wrap">
                                                        <span class="o-card__name">
                                                            <a href="product-detail.html">{{ $product->product_name
                                                                }}</a>
                                                        </span>
                                                        @php
                                                            if (auth('customer')->check()) {
                                                                // For authenticated users
                                                                $cartItem = $cart->items()->where(
                                                                'product_code',
                                                                $product->product_code
                                                                )->first();
                                                                $quantity = $cartItem ? $cartItem->quantity : 0;
                                                                $subtotal = $product->sell_price * $quantity;
                                                            } else {
                                                                // For guest users
                                                                $quantity = $cart[$product->product_code];
                                                                $subtotal = $product->sell_price * $quantity;
                                                                $total += $subtotal;
                                                            }
                                                        @endphp
                                                        <span class="o-card__quantity">Quantity x {{ $quantity }}</span>
                                                        <span class="o-card__price">{{ number_format($subtotal, 2)
                                                            }}</span>
                                                    </div>
                                                </div>

                                                <form
                                                    action="{{ route('cart.remove', ['product_code' => $product->product_code]) }}"
                                                    method="POST" class="remove-form">
                                                    @csrf
                                                    <button type="submit" class="remove-btn">
                                                        <a class="o-card__del far fa-trash-alt"></a>
                                                    </button>
                                                </form>
                                            </div>
                                            @endforeach

                                        </div>
                                    </div>

                                </div>

                                <div class="invoicingandOther">
                                    <!-- invoice and billing  -->
                                    <div class="o-summary__section u-s-m-b-30">
                                        <div class="o-summary__box">
                                            <h1 class="checkout-f__h1">INVOICE & BILLING</h1>

                                            <div class="ship-b">
                                                <span class="ship-b__text">Invoice Email</span>
                                                <div class="ship-b__box">
                                                    @auth('customer')
                                                        <p><span class="ri-mail-line material-symbols-outlined"></span> {{
                                                        $customerEmail }}</p>
                                                    @else
                                                        @if($deliveryInformation['invoice_email'])
                                                            <span class="ship-b__p">{{ $deliveryInformation['invoice_email'] ??
                                                            '' }}</span>
                                                        @else
                                                            <p class="ship-b__p">No invoice email available.</d>
                                                        @endif
                                                    @endauth
                                                </div>
                                            </div>

                                            <div class="ship-b">
                                                <span class="ship-b__text">Billing Address</span>
                                                <div class="ship-b__box">
                                                    @auth('customer')
                                                        @if($default_billing_addresses)
                                                            <p><span class="ri-map-pin-line material-symbols-outlined"></span>
                                                            {{ $default_billing_addresses->address }}, 
                                                            {{ $default_billing_addresses->zone->zone_name }},
                                                            {{ $default_billing_addresses->city->city }}, 
                                                            {{ $default_billing_addresses->province->province_name }}</p>
                                                        @else
                                                            <p class="ship-b__p">No Billing Address available.</p>
                                                        @endif
                                                    @else
                                                        @if($deliveryInformation)
                                                            <span class="ship-b__p">Bill to shipping address</span>
                                                        @else
                                                            <p class="ship-b__p">No billing address available.</d>
                                                        @endif
                                                    @endauth
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    @php
                                        // Initialize variables for authenticated users
                                        if (auth('customer')->check()) {
                                            $customerId = auth('customer')->id();
                                            $cart = \App\Models\Cart::where('customer_id', auth('customer')->id())->first();
    
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
                                            //$tax = 13 / 100 * $amount_before_tax;
                                            $tax = 0;
                                            $grand_total = $amount_before_tax + $tax;
                                        }
                                    @endphp
                                    <!-- shipping -->
                                    <div class="o-summary__section u-s-m-b-30">
                                        <div class="o-summary__box">
                                            <table class="o-summary__table">
                                                <tbody>
                                                    <tr>
                                                        <td>SHIPPING</td>
                                                        <td>{{ number_format($shipping, 2) }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>SUBTOTAL</td>
                                                        <td>{{ number_format($total, 2)}}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>TAX (Incl)</td>
                                                        <td>{{ number_format($tax, 2) }}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>GRAND TOTAL</td>
                                                        <td>{{ number_format($grand_total, 2)}}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="o-summary__section u-s-m-b-30">
                                        <div class="o-summary__box">
                                            <h1 class="checkout-f__h1">PAYMENT INFORMATION</h1>
                                            <form id="orderForm" class="checkout-f__payment" method="POST"
                                                action="{{ route('frontend.place.order') }}" onsubmit="return validateForm()">
                                                @csrf
                                                <div class="u-s-m-b-10">
                                                    <!--====== Radio Box ======-->
                                                    <div class="radio-box">
                                                        <input type="radio" id="cash-on-delivery" value="C"
                                                            name="payment_method" onclick="toggleButton()" required>
                                                        <div class="radio-box__state radio-box__state--primary">
                                                            <label class="radio-box__label" for="cash-on-delivery">Cash
                                                                on Delivery</label>
                                                        </div>
                                                    </div>
                                                    <!--====== End - Radio Box ======-->
                                                    <span class="gl-text u-s-m-t-6">Pay Upon Cash on delivery.</span>
                                                </div>
                                                <div>
                                                    <button class="btn btn--e-brand-b-2" id="placeOrderButton" type="submit" {{ $isCartEmpty
                                                        ? 'disabled' : '' }}>PLACE ORDER</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--====== End - Order Summary ======-->



                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section Content ======-->
    </div>
    <!--====== End - Section 3 ======-->
</div>
<!--====== End - App Content ======-->

<script>
    function toggleButton() {
        const radioButtons = document.querySelectorAll('input[name="payment_method"]');
        const button = document.getElementById('placeOrderButton');
        
        // Enable button if any radio button is checked
        button.disabled = !Array.from(radioButtons).some(radio => radio.checked);
    }

    function validateForm() {
        const radioButtons = document.querySelectorAll('input[name="payment_method"]');
        const isChecked = Array.from(radioButtons).some(radio => radio.checked);
        
        // Prevent form submission if no radio button is checked
        if (!isChecked) {
            alert("Please select a payment method.");
            return false;
        }
        
        return true;
    }
</script>


<script>
    $(document).ready(function () {
        var selectedCity = @json($selectedCity); // Get the selected city from Blade
        var selectedZone = @json($selectedZone);

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

                        // Add the default option
                        $citySelect.append('<option selected value="" disabled>Select City</option>');

                        // Populate city options
                        $.each(data, function (key, value) {
                            var isSelected = (key === selectedCity) ? ' selected' : ''; // Check if this city should be selected
                            $citySelect.append('<option value="' + key + '"' + isSelected + '>' + value + '</option>');
                        });

                        // Fetch zones for the selected city if it exists
                        if (selectedCity) {
                            fetchZones(selectedCity);
                        }

                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log("AJAX Error: ", textStatus, errorThrown);
                    }
                });
            } else {
                $('select[name="city"]').empty();
                $('select[name="zone"]').empty();
            }
        });


        // Handle city change to fetch zones
        $('#city').on('change', function() {
            var city_id = $(this).val();
            if (city_id) {
                $.ajax({
                    url: "/getZones/" + city_id, // URL should match the route
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        var $zoneSelect = $('#zone'); // Select zone dropdown
                        $zoneSelect.empty(); // Clear existing options
                        $zoneSelect.append('<option value="" disabled selected>Choose Zone</option>'); // Default option

                        // Populate zone options
                        $.each(data, function(key, value) {
                            $zoneSelect.append('<option value="' + key + '">' + value + '</option>');
                        });
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.error("AJAX Error: ", textStatus, errorThrown);
                    }
                });
            } else {
                $('#zone').empty().append('<option value="" disabled selected>Choose Zone</option>');
            }
        });
        
        // Function to fetch zones based on city_id
        function fetchZones(city_id) {
            console.log(city_id);
            $.ajax({
                url: "/getZones/" + city_id,
                type: "GET",
                dataType: "json",
                success: function(data) {
                    var $zoneSelect = $('select[name="zone"]');
                    $zoneSelect.empty();
                    
                    // Add the default option
                    $zoneSelect.append('<option selected value="" disabled>Select Zone</option>');

                    // Populate zone options
                    $.each(data, function(key, value) {
                        var isSelected = (key === selectedZone) ? ' selected' : '';
                        $zoneSelect.append('<option value="' + key + '"' + isSelected + '>' + value + '</option>');
                    });
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log("AJAX Error: ", textStatus, errorThrown);
                }
            });
        }

        // Trigger change event on load to populate cities based on initially selected province
        var initialProvince = $('select[name="province"]').val();
        if (initialProvince) {
            $('select[name="province"]').trigger('change');
        }
    });

</script>

@endsection