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
                                <h1 class="dash__h1 u-s-m-b-14 d-block text-center fa">My Cancellations</h1>

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
                                                    </div>
                                                    <div>
                                                        
                                                        
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
                                                        @foreach ($item->cancellations as $cancellation)
                                                            <div class="dash__link dash__link--brand">
                                                            <span>Reason: </span>
                                                            <span class="manage-o__text-2 u-c-secondary">{{ $cancellation->reason->reason_name ?? 'N/A' }}</span>
                                                            </div>
                                                            
                                                        
                                                            <div class="dash__link dash__link--brand">
                                                            <span>Description: </span>
                                                            <span class="manage-o__text-2 u-c-secondary">{{ $cancellation->reason_description ?? 'N/A' }}</span>
                                                            </div>
                                                        @endforeach
                                                            
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
@endsection

@section('customJs')

@endsection