@extends('backend.layout.master')
@section('content')


<div class="pagetitle">
  <h1>Address City Zone</h1>
  <nav>
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a class="nav-link" style="border:none" href="{{ route('backend.dashboard') }}">
          <i class="fa fa-dashboard"></i><span> Dashboard</span>
        </a>
      </li>
      <li class="breadcrumb-item active">Address Zone</li>
    </ol>
  </nav>
</div><!-- End Page Title -->

<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h4 class="card-title" style="display: inline-block;">Address Zone
          <button data-bs-toggle="modal" data-bs-target="#addzoneModal" class="btn btn-primary"><span style="color:white;">Add Zone</span></button>
    </h4>
  </div>&nbsp;

  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th scope="col">S.N.</th>
            <th scope="col">City</th>
            <th scope="col">Zone</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($zones as $index => $zone)
          <tr>
            <td scope="row">{{ $index + 1 }}</td>
            <td>{{ $zone->city->city }}</td>
            <td>{{ $zone->zone_name }}</td>
            <td>{{ $zone->created_at->format('Y-m-d') }}</td>
            <td>
              <div style="display: flex; align-items: center;">
                <form method="post" action="{{ route('backend.addresszone.view') }}" style="margin-right: 10px;">
                @csrf
                  <input type="hidden" name="id" value="{{ $zone->id }}"></button>
                  <button style="background-color: transparent; border: none;">
                    <i title="View Details" class="fa fa-info-circle" style="font-size:35px;color:#24a0ed"></i>
                  </button>
                </form>
                &nbsp;
                        
                <form method="post" action="{{ route('backend.addresszone.edit') }}" style="margin-right: 10px;">
                @csrf
                <input type="hidden" name="id" value="{{ $zone->id }}">
                <button style="background-color: transparent; border: none;">
                    <i title="Edit Details" class="fa fa-edit" style="font-size:35px;color:blue"></i>
                </button>
                </form>
                &nbsp;

                <button data-bs-toggle="modal" data-bs-target="#deleteModal{{ $zone->id }}" style="background-color: transparent; border: none;">
                  <i title="Delete" class="fa fa-trash" style="font-size:35px;color:red"></i>
                </button>
              </div>
            </td>
          </tr>

          <!-- Delete Modal -->
          <div class="modal fade" id="deleteModal{{ $zone->id }}" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Delete Zone</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <b>Are you sure you want to delete this zone?</b>
                </div>
                <div class="modal-footer">
                  <form method="post" action="{{ route('backend.addresszone.delete', $zone->id) }}">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">Delete</button>
                  </form>
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div><!-- End Delete Modal -->
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>


          <!-- Add Zone Modal -->
          <div class="modal fade" id="addzoneModal" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Add Zone</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  
              <form class="row g-3" method="post" action="{{ route('backend.addresszone.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="col-md-12">
                  <label for="inputName5" class="form-label">City</label>
                  <select class="form-select" name="city_id" aria-label="City">
                      <option value="" selected disabled>Select</option>
                      @foreach($cities as $city)
                          <option value="{{ $city->id }}">{{ $city->city }}</option>
                      @endforeach
                  </select>
                </div>
                </br>
                <div class="col-md-12">
                  <label for="inputEmail5" class="form-label">Zone Name</label>
                  <input type="text" class="form-control" name="zone_name" required>
                </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Add Zone</button>
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
              </form>
              </div>
            </div>
          </div><!-- End Add Zone Modal -->

@endsection
