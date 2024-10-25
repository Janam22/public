@extends('backend.layout.master')
@section('content')


<div class="pagetitle">
  <h1>Upload Product Images</h1>
  <nav>
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a class="nav-link" style="border:none" href="{{ route('backend.dashboard') }}">
          <i class="fa fa-dashboard"></i><span> Dashboard</span>
        </a>
      </li>
      <li class="breadcrumb-item active">Upload Product Images</li>
    </ol>
  </nav>
</div><!-- End Page Title --> 

<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h4 class="card-title" style="display: inline-block;">Upload through Excel</h4>
    <a href="{{ route('backend.downloadTemplate') }}" class="btn btn-success float-right">Download Template</a>
  </div>&nbsp;

  <div class="card-body">
    <div class="table-responsive">
      
    <form action="{{ route('backend.uploadnow.index') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <input type="file" name="file" accept=".xls,.xlsx,.csv" required>
      <button class="btn btn-primary" type="submit">Import</button>
    </form>

    <br/>
    <br/>
    <form action="{{ route('backend.uploadnow.products') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <input type="file" name="file" accept=".xls,.xlsx,.csv" required>
      <button class="btn btn-primary" type="submit">Upload Products</button>
    </form>


    </div>
  </div>
</div>

@endsection
