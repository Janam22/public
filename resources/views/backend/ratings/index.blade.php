@extends('backend.layout.master')
@section('content')


<div class="pagetitle">
  <h1>Reviews and Ratings</h1>
  <nav>
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a class="nav-link" style="border:none" href="{{ route('backend.dashboard') }}">
          <i class="fa fa-dashboard"></i><span> Dashboard</span>
        </a>
      </li>
      <li class="breadcrumb-item active">Reviews and Ratings</li>
    </ol>
  </nav>
</div><!-- End Page Title --> 

<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h4 class="card-title" style="display: inline-block;">Reviews and Ratings</h4>
  </div>&nbsp;

  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th scope="col">S.N.</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Product</th>
            <th scope="col">Rating</th>
            <th scope="col">Review</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
            
          @foreach ($reviews as $index => $review)
              <tr>
                <th scope="row">{{ $index + 1 }}</th>
                <td>{{ $review->name }}</td>
                <td>{{ $review->email }}</td>
                <td>{{ $review->product->product_name }}</td>
                <td>{{ $review->rating }}</td>
                <td>{{ $review->review_detail }}</td>
                <td>
                  <div style="display: flex; align-items: center;">
                        <button data-bs-toggle="modal" data-bs-target="#reviewdeletemodal{{ $review->id }}" style="background-color: transparent; border: none;">
                            <i title="Delete" class="fa fa-trash" style="font-size:35px;color:red"></i>
                        </button>
    
                  </div>
                </td>
                
            <!--Review Delete Modal-->
              <div class="modal fade" id="reviewdeletemodal{{ $review->id }}" tabindex="-1">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Delete Review</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        
                        <b>Are you sure you want to Delete this Review?</b>
                  
                    </div>
                    
                    <div class="modal-footer">
                        
                      <form method="post" action="{{ route('backend.ratings.delete', $review->id) }}" enctype="multipart/form-data">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete </button>
                      </form>

                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                  </div>
                </div>
              </div>
            <!-- End Review Delete Modal-->
              
              </tr>
              
          @endforeach

        </tbody>
      </table>
    </div>
  </div>
</div>

@endsection
