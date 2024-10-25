@extends('backend.layout.master')
@section('content')

<style>
    .order-info {
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 10px;
    }

    .order-info div {
        margin-bottom: 5px;
    }

    .order-info strong {
        color: #333;
    }
</style>

<div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a class="nav-link" style="border:none" href="{{ route('backend.dashboard') }}">
              <span>Home</span>
            </a>
          </li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- products Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">Products</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-list-alt"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $product_count }}</h6>
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End products Card -->

            <!-- customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">Customers</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-users"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $customer_count }}</h6>
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End customers Card -->

            <!-- orders Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">Orders </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-shopping-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $order_count }}</h6>
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End orders Card -->


            <!-- inquiries Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card revenue-card">

                <div class="card-body">
                  <h5 class="card-title">Inquiries </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-inbox"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $inquiry_count }}</h6>
                      
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End inquiries Card -->
            
            <!-- Offer subscribers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card revenue-card">

                <div class="card-body">
                  <h5 class="card-title">Subscribers </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-bell"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $newsletter_count }}</h6>
                      
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End subscribers Card -->
            
            <!-- System Users Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card revenue-card">

                <div class="card-body">
                  <h5 class="card-title">System Users </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-user-circle"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $user_count }}</h6>
                      
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End System users Card -->
            
            <!-- Reviews Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card revenue-card">

                <div class="card-body">
                  <h5 class="card-title">Reviews </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-star"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $reviews_count }}</h6>
                      
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Reviews Card -->
            
          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">
            
          <!-- Recent Orders Data -->
          <div class="card">

            <div class="card-body pb-0">
              <h5 class="card-title">Recent Orders </h5>
                @foreach($orders as $index => $order)
                    <div class="order-info">
                        <div><strong>Order:</strong><a href="{{ route('backend.orders.view', $order->id) }}"> {{ $order->order_id }}</a></div>
                        <div><strong>Customer:</strong> {{ $order->customer->full_name }}</div>
                        <div><strong>Item Count:</strong> {{ $order->total_items }}</div>
                    </div>
                @endforeach
            </div>
          </div><!-- End Recent Orders Data -->

          <!-- Visual Data -->
          <div class="card">

            <div class="card-body pb-0">
              <h5 class="card-title">Visual Data </h5>

              <div id="visualdataChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#visualdataChart")).setOption({
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: 'Access From',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [{
                          value: {{ $product_count }},
                          name: 'Products'
                        },
                        {
                          value: {{ $customer_count }},
                          name: 'Customers'
                        },
                        {
                          value: {{ $order_count }},
                          name: 'Orders'
                        },
                        {
                          value: {{ $inquiry_count }},
                          name: 'Inquiries'
                        }
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div><!-- End Visual Data -->
          
        </div><!-- End Right side columns -->

      </div>
      </section>

@endsection