@extends('frontend.layouts.app')
                    
@section('contents')
<div class="rightOptions" >
    <h1 class="dash__h1 u-s-m-b-14 fa text-center d-block">Manage Section</h1>

    <div class="midetailsOfUser d-flex">
        <!-- Personal Profile Section -->
        <div class="card">
            <div class="d-flex">
                <p class="">Personal Profile</p>
                <form method="get" action="{{ route('frontend.profile.edit') }}">
                    <span class="pipeSign">|</span>  
                    <button class="btn editBtnAccocut">Edit</button>
                </form>
            </div>
            <p class="accountDashboardName">{{ $customer_user->full_name }}</p>
            <p>{{ $customer_user->email }}</p>
            <p>{{ $customer_user->phone }}</p>
        </div>

        <!-- Address Book Section -->
        <div class="card">
            <div class="d-flex">
                <p class="">Address Book</p>
                <form method="get" action="{{ route('frontend.address.book') }}">
                    <span class="pipeSign">|</span>    
                    <button class="btn editBtnAccocut" type="submit">Edit</button>
                </form>
            </div>

            <!-- Shipping Address Section -->
            <div class="address-section">
                <p class="deff">Default Shipping Address</p>
                <p id="shipping-address">
                    @if($defaultShippingAddress)
                        <p>{{ $defaultShippingAddress->address }}</p>
                        <p>{{ $defaultShippingAddress->province ? $defaultShippingAddress->province->province_name : '' }} - 
                        {{ $defaultShippingAddress->city ? $defaultShippingAddress->city->city : '' }} - 
                        {{ $defaultShippingAddress->zone ? $defaultShippingAddress->zone->zone_name : '' }}</p>
                        <p>{{ $defaultShippingAddress->phone }}</p>
                    @else
                        No default shipping address set.
                    @endif
                </p>
            </div>
        </div>

        <!-- Billing Address Section -->
        <div class="card">
            <div class="address-section">
                <p class="deff">Default Billing Address</p>
                <p id="billing-address">
                    @if($defaultBillingAddress)
                        <p>{{ $defaultBillingAddress->address }}</p>
                        <p>{{ $defaultBillingAddress->province ? $defaultBillingAddress->province->province_name : '' }} - 
                        {{ $defaultBillingAddress->city ? $defaultBillingAddress->city->city : '' }} - 
                        {{ $defaultBillingAddress->zone ? $defaultBillingAddress->zone->zone_name : '' }}</p>
                        <p>{{ $defaultBillingAddress->phone }}</p>
                    @else
                        No default billing address set.
                    @endif
                </p>
            </div>
        </div>
    </div>

    <!-- Round Icons Number -->
    <ul class="dash__w-list d-flex justify-content-around orderMng">
        <li>
            <div class="dash__w-wrap">
                <span class="dash__w-icon dash__w-icon-style-1"><i class="fas fa-cart-arrow-down"></i></span>
                <span class="dash__w-text">{{ $orderCount }}</span>
                <span class="dash__w-name">Orders Placed</span>
            </div>
        </li>
        <li>
            <div class="dash__w-wrap">
                <span class="dash__w-icon dash__w-icon-style-2"><i class="fas fa-times"></i></span>
                <span class="dash__w-text">{{ $cancelledCount }}</span>
                <span class="dash__w-name">Cancel Orders</span>
            </div>
        </li>
        <li>
            <div class="dash__w-wrap">
                <span class="dash__w-icon dash__w-icon-style-3"><i class="far fa-heart"></i></span>
                <span class="dash__w-text">{{ $wishitem_count }}</span>
                <span class="dash__w-name">Wishlist</span>
            </div>
        </li>
    </ul>

    <div class="dash__box dash__box--shadow dash__box--bg-white dash__box--radius bellowAllOrdered">
        <h2 class="dash__h2 section__heading u-s-p-xy-20 recOrderHeding fa centerBlockText">RECENT ORDERS</h2>
        <div class="dash__table-wrap gl-scroll dashboardRecentOrder">
            <table class="dash__table">
                <thead>
                    <tr>
                        <th>Order #</th>
                        <th>Placed On</th>
                        <th>Items</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    @if($order)
                        @foreach($orderItems as $item)
                            <tr>
                                <td>{{ $item->order_id }}</td>
                                <td>{{ $item->created_at->format('d/m/Y') }}</td>
                                <td>
                                    <div class="dash__table-img-wrap">
                                        @if($item->product->images->isNotEmpty())
                                            <img class="u-img-fluid" src="{{ asset('public/' . $item->product->images->first()->image_path) }}" alt="">
                                        @else
                                            <img class="u-img-fluid" src="{{ asset('public/client-side/images/no-image.png') }}" alt="No image available">
                                        @endif
                                    </div>
                                </td>
                                <td>
                                    <div class="dash__table-total">
                                        <span>{{ $item->subtotal }}</span>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td class="centerBlockText">No recent orders found.</td>
                        </tr>
                    @endif
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

@section('customJs')

@endsection



