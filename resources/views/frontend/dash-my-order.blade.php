<!-- <script src="https://cdn.jsdelivr.net/npm/@hotwired/turbo"></script>
<script src="{{ asset('client-side/js/SideBarActiveLink.js') }}"></script> -->


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
                        <div class="dash__box dash__box--radius dash__box--bg-white u-s-m-b-30">
                            <div class="dash__pad-2 dashmyorders-parent">
                                <h1 class="dash__h1 u-s-m-b-14 d-block text-center fa">My Orders</h1>


                                <form class="m-order u-s-m-b-30 d-flex justify-content-center align-items-center" id="order-filter-form" action="{{ route('frontend.dash-my-order') }}" method="GET">
                                    <div class="m-order__select-wrapper">

                                        <label class="u-s-m-r-8" for="my-order-sort">Show:</label>
                                        <select class="select-box select-box--primary-style" name="filter" id="my-order-sort" onchange="this.form.submit()">
                                            <option value="last_5_orders" {{ $filter === 'last_5_orders' ? 'selected' : '' }}>Last 5 orders</option>
                                            <option value="last_15_days" {{ $filter === 'last_15_days' ? 'selected' : '' }}>Last 15 days</option>
                                            <option value="last_30_days" {{ $filter === 'last_30_days' ? 'selected' : '' }}>Last 30 days</option>
                                            <option value="last_6_months" {{ $filter === 'last_6_months' ? 'selected' : '' }}>Last 6 months</option>
                                            <option value="last_12_months" {{ $filter === 'last_12_months' ? 'selected' : '' }}>Last 12 months</option>
                                            <option value="all_orders" {{ $filter === 'all_orders' ? 'selected' : '' }}>All Orders</option>
                                        </select>
                                    </div>
                                </form>
                                
                                <div class="m-order__list">

                                    @forelse($orders as $order)
                                        <div class="m-order__get">


                                            <div class="manage-o__header u-s-m-b-30">
                                                <div class="dash-l-r">
                                                    <div>
                                                        <div class="manage-o__text-2 u-c-secondary">Order
                                                            {{ $order->order_id }}
                                                        </div>
                                                        <div class="manage-o__text u-c-silver">Placed on
                                                            {{ $order->created_at->format('d M Y H:i:s') }}</div>
                                                        <div class="manage-o__text u-c-silver">Pay Amount
                                                            {{ $order->total_amount }}</div>
                                                        <div class="manage-o__text u-c-silver">Shipping Cost
                                                                {{ $order->shipping_cost }}</div>
                                                    </div>
                                                    <div>
                                                        
                                                        <div>
                                                            <span class="manage-o__badge badge--processing">{{ ucfirst($order->order_status) }}</span>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                            @forelse($order->orderItems as $item)
                                                <div class="manage-o__description">
                                                    <div class="description__container">
                                                        <div class="description__img-wrap">
                                                            @if(!empty($item->product->image_path))
                                                                <img class="u-img-fluid" data-src="{{ asset($item->product->image_path) }}" alt="">
                                                            @else
                                                                <img class="u-img-fluid" data-src="{{ asset('public/client-side/images/no-image.png') }}" alt="No image available">
                                                            @endif
                                                        </div>
                                                        <div class="description-title">{{ $item->product->product_name }}</div>
                                                        
                                                        <div class="description-title">
                                                            <span class="manage-o__text-2 u-c-silver">Total:<span class="manage-o__text-2 u-c-secondary">{{ number_format($item->subtotal, 2) }}</span></span>
                                                        </div>

                                                        <div class="description-title">
                                                            <span class="manage-o__text-2 u-c-silver">Qty:<span class="manage-o__text-2 u-c-secondary">{{ $item->quantity }}</span></span>
                                                        </div>

                                                    </div>
                                                    <div class="description__info-wrap">

                                                    @if($item->cancellations->isNotEmpty())
                                                        <div class="dash__link dash__link--brand">
                                                            <span class="manage-o__text-2 u-c-secondary">Cancelled</span>
                                                        </div>
                                                    @else
                                                        @if($order->order_status === 'Processing') <!-- Check if the order status is Processing -->
                                                            <form method="get" action="{{ route('frontend.myorder.cancel') }}">
                                                            @csrf
                                                            <input type="hidden" name="order_item_id" value="{{ $item->id }}">
                                                            <div class="dash__link dash__link--brand">
                                                                <button type="submit" class="txtnormal dngrBtn">CANCEL</button>
                                                            </div>
                                                            </form>
                                                        @else
                                                            <div class="dash__link dash__link--brand">
                                                            <span class="manage-o__text-2 u-c-secondary">{{ ucfirst($order->order_status) }}</span>
                                                            </div>
                                                        @endif
                                                    @endif

                                                    </div>
                                                </div>

                                            @empty
                                                <p>No items found for this order.</p>
                                            @endforelse
                                        </div>

                                    @empty
                                        <p class="text-center">No orders found.</p>
                                    @endforelse

                                </div>
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


<!--====== End - App Content ======-->
<script>
    document.getElementById('my-order-sort').addEventListener('change', function() {
        document.getElementById('order-filter-form').submit();
    });
</script>

@endsection

@section('customJs')

@endsection
