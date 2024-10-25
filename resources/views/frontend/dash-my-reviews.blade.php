@extends('frontend.layouts.app')
@section('contents')


    <!--====== Section 2 ======-->
    <div class="u-s-p-b-60">
        <!--====== Section Content ======-->
                <h1 class="dash__h1 u-s-m-b-14 fa text-center d-block">My Product Reviews</h1>
                
                <div class="table-wrapper">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Created</th>
                                <th>Product Name</th>
                                <th>Rating</th>
                                <th>Review</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if($reviews->isNotEmpty())
                                @foreach ($reviews as $review)
                                    <tr>
                                        <td>{{ $review->created_at }}</td>
                                        <td>
                                            <a class="product-o-link" href="{{ route('frontend.product-detail', $review->product_code) }}">{{ $review->product->product_name }}</a>
                                        </td>
                                        <td>
                                                    <div class="review-o__rating gl-rating-style u-s-m-b-8">
                                                        @for ($i = 1; $i <= 5; $i++)
                                                            @if ($i <= $review->rating)
                                                                <i class="fas fa-star"></i> <!-- Filled star -->
                                                            @else
                                                                <i class="far fa-star"></i> <!-- Empty star -->
                                                            @endif
                                                        @endfor
                                                    </div>
                                        </td>
                                        <td>{{ $review->review_detail }}</td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="6">You have not reviewed any product yet.</td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
                                            

</div>
    <!--====== End - Section Content ======-->
    <!--====== End - Section 2 ======-->
@endsection
