@extends('frontend.layouts.app')
@section('contents')

<style>
    .order-cancellation-terms {
        display: block;
        /* Ensure the container is a block element */
    }

    .order-cancellation-terms p,
    .order-cancellation-terms hr,
    .order-cancellation-terms ul {
        display: block;
        /* Ensure each element is block-level */
        width: 100%;
        /* Full width of the container */
    }

    .order-cancellation-terms p {
        margin-bottom: 15px;
        /* Space below the paragraph */
    }

    .order-cancellation-terms hr {
        border: 1px solid #ccc;
        /* Style for horizontal line */
        margin: 10px 0;
        /* Space above and below the line */
    }

    .order-cancellation-terms ul {
        list-style-type: disc;
        /* Bulleted list */
        padding-left: 20px;
        /* Indentation for list items */
        margin-top: 15px;
        /* Space above the list */
    }

    label {
        cursor: pointer;
        /* Change cursor to pointer */
    }
</style>


<!-- Loading Modal -->
<div class="modal fade" id="loadingModal" tabindex="-1" role="dialog" aria-labelledby="loadingModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loadingModalLabel"><b>Processing Cancellation Request</b></h5>
            </div>
            <div class="modal-body">
                <p>Processing your cancellation request, please wait...</p>
                <img src="{{ asset('public/storage/frontend/processing.gif') }}" alt="Loading..." style="width: 80%; max-width: 100px; display: block; margin: auto;">
            </div>
        </div>
    </div>
</div>

<!--====== Section 2 ======-->
<div class="u-s-p-b-60">
    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="dash">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 ordersParent">
                        <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white u-s-m-b-30">
                            <form id="cancelForm" method="post" action="{{ route('frontend.myorder.docancel') }}">
                                @csrf
                                <div class="dash__pad-2 dashmyorders-parent">
                                    <h1 class="dash__h1 u-s-m-b-14 d-block text-center fa">Request Cancellation</h1>

                                    <div class="m-order__get">
                                        <div class="manage-o__header u-s-m-b-30">
                                            <div class="dash-l-r">
                                                <div>
                                                    <div class="manage-o__text-2 u-c-secondary">Order
                                                        {{ $orderitem->order_id }}
                                                    </div>
                                                    <div class="manage-o__text u-c-silver">Placed on
                                                        {{ $orderitem->created_at->format('d M Y H:i:s') }}</div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="manage-o__description">
                                            <div class="description__container">
                                                <div class="description__img-wrap">

                                                    @if ($orderitem && $orderitem->product)
                                                    @php
                                                    $firstImage = $orderitem->product->images->first();
                                                    @endphp
                                                    @if ($firstImage && !empty($firstImage->image_path))
                                                    <img class="u-img-fluid" src="{{ asset('public/' . $firstImage->image_path) }}"
                                                        alt="">
                                                    @else
                                                    <img class="u-img-fluid"
                                                        src="{{ asset('public/client-side/images/no-image.png') }}"
                                                        alt="No image available">
                                                    @endif
                                                    @else
                                                    <img class="u-img-fluid"
                                                        src="{{ asset('public/client-side/images/no-image.png') }}"
                                                        alt="No image available">
                                                    @endif

                                                </div>
                                                <div class="description-title">{{ $orderitem->product->product_name }}
                                                </div>

                                                <div class="description-title">

                                                    <span class="manage-o__text-2 u-c-silver">Qty:

                                                        <span class="manage-o__text-2 u-c-secondary">{{
                                                            $orderitem->quantity }}</span></span>
                                                </div>

                                            </div>
                                            <div class="description__info-wrap">

                                                <div class="description__info-wrap">
                                                    <div class="dash__link dash__link--brand">
                                                        <select class="select-box select-box--primary-style"
                                                            name="cancel_reason" required>
                                                            <option selected value="" disabled>Select a Reason</option>
                                                            @foreach($cancelreasons as $id => $reason_name)
                                                            <option value="{{ $id }}">
                                                                {{ $reason_name }}
                                                            </option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="m-order__get">
                                        <div class="manage-o__header u-s-m-b-30">
                                            <div class="dash-l-r">
                                                <div>
                                                    <div class="manage-o__text-2 u-c-secondary">Additional Information
                                                        (Optional)</div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="manage-o__description">
                                            <textarea class="form-control" name="reason_description" rows="5"
                                                placeholder="Please write in detail about your cancellation reason."
                                                required></textarea>
                                        </div>
                                    </div>


                                    <div class="m-order__get">
                                        <div class="manage-o__header u-s-m-b-30">
                                            <div class="dash-l-r">
                                                <div>
                                                    <div class="manage-o__text-2 u-c-secondary">Cancellation Policy
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="manage-o__description order-cancellation-terms">
                                            <p>Before cancelling the order, kindly read thoroughly our following terms
                                                and conditions:</p>
                                            </hr>
                                            <ul>
                                                <li>Once you submit this form you agree to cancel the selected item(s)
                                                    in your order. We will be unable to retrive your order oce it is
                                                    cancelled.</li>
                                                <li>If you are cancelling your order partially, i.e. Not all the items
                                                    in your order, then we will be unable to refund you the shipping
                                                    fee.</li>
                                            </ul>
                                            <in>
                                                <input type="checkbox" name="policy_checked" id="agreementCheckbox">
                                                <label for="agreementCheckbox">I have read and accepted the Cancellation
                                                    policy.</label>
                                                </p>


                                        </div>
                                        <input type="hidden" value="{{ $orderitem->id }}" name="order_item_id">
                                        <button type="submit" class="btn btn-primary" id="submitButton"
                                            style="float: right; align-self: flex-end;" disabled>SUBMIT</button>
                                    </div>


                                </div>

                            </form>
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
    document.addEventListener('DOMContentLoaded', function () {
        const checkbox = document.getElementById('agreementCheckbox');
        const button = document.getElementById('submitButton');

        checkbox.addEventListener('change', function () {
            button.disabled = !this.checked; // Enable button if checked, disable if not
        });
    });
</script>

<script>
    document.getElementById('cancelForm').onsubmit = function() {
        // Show the loading modal
        $('#loadingModal').modal('show');
        

        // Disable the submit button to prevent multiple submissions
        document.getElementById('submitButton').disabled = true;

        // Optionally, you can add a loading indicator on the button
        document.getElementById('submitButton').innerText = 'Processing...';
    };
</script>

@endsection

@section('customJs')

@endsection