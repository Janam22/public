@extends('backend.layout.master')
@section('content')

      <section class="section register min-vh-80 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-8 col-md-6 d-flex flex-column align-items-center justify-content-center">


          <div class="card mb-6">
            <div class="card-body">
              <h5 class="card-title"><center>Update Reason Detail</center></h5>
                    
                    
              <!-- Multi Columns Form -->
              <form class="row g-3" method="post" action="{{ route('backend.cancelreasons.update', $cancelreason->id) }}" enctype="multipart/form-data">
              @csrf
                  
                <div class="col-md-12">
                  <label for="inputName5" class="form-label">Reason</label>
                  <input type="text" class="form-control" name="reason_name" value="{{ $cancelreason->reason_name }}" required>
                </div>
                
                <table>
                <tr>
                <th>
                    
                <div class="text-center">
                  <button type="submit" class="btn btn-success">Update Reason Detail</button>
                
              </form><!-- End Multi Columns Form -->
              </th>
              <th>
              <form method="get" action="{{ route('backend.cancelreasons.index') }}">
                <div class="text-center">
                  <button type="submit" class="btn btn-secondary">Cancel </button>
                </div>
              </form>
              </div>
              
              </th>
              </tr>
              </table>
              
            </div>
          </div>

        </div>


            </div>
          </div>
        </div>
    </section>

@endsection