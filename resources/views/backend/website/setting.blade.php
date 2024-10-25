@extends('backend.layout.master')
@section('content')

      <section class="section register min-vh-80 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-10 col-md-6 d-flex flex-column align-items-center justify-content-center">


          <div class="card mb-6">
            <div class="card-body">
              <h5 class="card-title"><center><strong>E-commerce Website Data</strong></center></h5>
                    
                    
              <!-- Multi Columns Form -->
              <form class="row g-3" method="post" action="{{ route('backend.website.update', $websitedata->id) }}" enctype="multipart/form-data">
              @csrf
                    
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Company Name <span style="color:red;">*</span></label>
                  <input type="text" class="form-control" name="company_name" value="{{ $websitedata->company_name }}" required>
                </div>
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Company Logo Header</label>
                          <img src="{{ asset('public/storage/backend/company_logo/' . $websitedata->company_logo_header) }}" alt="Logo Header" width="100">
                          <div class="pt-2">
			                    <input type="file" id="upload" name="company_logo_header"  accept="image/png, image/gif, image/jpeg" />
                          </div>
                </div>
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Company Logo Footer</label>
                          <img src="{{ asset('public/storage/backend/company_logo/' . $websitedata->company_logo_footer) }}" alt="Logo Footer" width="100">
                          <div class="pt-2">
			                    <input type="file" id="upload" name="company_logo_footer"  accept="image/png, image/gif, image/jpeg" />
                          </div>
                </div>
                 <div class="col-md-6">
                  <label for="exampleColorInput" class="form-label me-2">Choose Website Theme Color</label>
                  <div class="col-md-12 d-flex align-items-center">
                  <div class="row">
                    <div class="col-md-3">
                      <label for="exampleColorInput" class="form-label me-2">Header</label>
                  <input type="color" class="form-control form-control-color me-2" id="header_theme_color" name="header_theme_color" value="{{ $websitedata->header_theme_color }}" title="Choose your color">
                    </div>
                    <div class="col-md-3">
                      <label for="exampleColorInput" class="form-label me-2">Footer</label>
                      <input type="color" class="form-control form-control-color me-2" id="footer_theme_color" name="footer_theme_color" value="{{ $websitedata->footer_theme_color }}" title="Choose your color">
                    </div>
                    <div class="col-md-3">
                      <label for="exampleColorInput" class="form-label me-2">Text</label>
                      <input type="color" class="form-control form-control-color me-2" id="text_theme_color" name="text_theme_color" value="{{ $websitedata->text_theme_color }}" title="Choose your color">
                    </div>
                    <div class="col-md-3">
                      <label for="exampleColorInput" class="form-label me-2">Hover</label>
                      <input type="color" class="form-control form-control-color me-2" id="hover_effect_color" name="hover_effect_color" value="{{ $websitedata->hover_effect_color }}" title="Choose your color">
                    </div>
                  </div>
                </div>
                  <div class="col-md-12">
                    <button type="button" class="btn btn-sm mt-2" id="setDefaultColor" style="background-color: #ff4500; color:white; padding:5px 27px 5px 27px;">Set Default Theme Color</button>
                  </div>
                </div>
                
                <script>
                  document.getElementById('setDefaultColor').addEventListener('click', function() {
                  var header_theme_color = '#ff4500';  
                  var footer_theme_color = '#000000';  
                  var text_theme_color = '#ffffff';   
                  var hover_effect_color = '#fa4400'; 

                  document.getElementById('header_theme_color').value = header_theme_color; 
                  document.getElementById('footer_theme_color').value = footer_theme_color; 
                  document.getElementById('text_theme_color').value = text_theme_color; 
                  document.getElementById('hover_effect_color').value = hover_effect_color; 
                     });
              </script>
                <div class="col-md-6">
                  <label for="inputEmail5" class="form-label">Primary Email <span style="color:red;">*</span></label>
                  <input type="email" class="form-control" name="primary_email" value="{{ $websitedata->primary_email }}" required>
                </div>
                
                <div class="col-md-6">
                  <label for="inputEmail5" class="form-label">Secondary Email</label>
                  <input type="email" class="form-control" name="secondary_email" value="{{ $websitedata->secondary_email }}">
                </div>
                
                <div class="col-md-6">
                  <label for="inputPassword5" class="form-label">Primary Phone <span style="color:red;">*</span></label>
                  <input type="phone" class="form-control" value="{{ $websitedata->primary_phone }}" name="primary_phone" required>
                </div>
                
                <div class="col-md-6">
                  <label for="inputPassword5" class="form-label">Secondary Phone</label>
                  <input type="phone" class="form-control" value="{{ $websitedata->secondary_phone }}" name="secondary_phone">
                </div>
                
                <div class="col-md-6">
                  <label for="inputZip" class="form-label">Company Address <span style="color:red;">*</span></label>
                  <input type="text" class="form-control" value="{{ $websitedata->address }}" name="address" required>
                </div> 
                
                <div class="col-md-6">
                  <label for="inputZip" class="form-label">Website Link <span style="color:red;">*</span></label>
                  <input type="text" class="form-control" value="{{ $websitedata->website_link }}" name="website_link" required>
                </div> 
                
                <div class="col-md-6">
                  <label for="shippingCost" class="form-label">
                      Shipping cost options <span style="color:red;">*</span>
                  </label>
                  <div>
                      <label>
                          <input type="radio" name="shipping_option" value="citywisecost" {{ $websitedata->shipping_cost_apply_type === 'citywisecost' ? 'checked' : '' }} required>
                          Calculate Shipping cost once regardless of items
                      </label>
                  </div>
                  <div>
                      <label>
                          <input type="radio" name="shipping_option" value="itemwisecost" {{ $websitedata->shipping_cost_apply_type === 'itemwisecost' ? 'checked' : '' }} >
                          Calculate shipping cost to each item selected
                      </label>
                  </div>
              </div>
      
      
              <div class="col-md-6">
                <label for="inputZip" class="form-label">No of Category display <span style="color:red;">*</span></label>
                <input type="number" class="form-control" value="{{ $websitedata->no_category_display }}" name="no_category_display" min="0" required>
              </div> 
                
                <div class="col-md-6">
                  <label for="inputZip" class="form-label">Map URL <span style="color:red;">*</span></label>
                  <input type="text" class="form-control" value="{{ $websitedata->map_url }}" name="map_url" required>
                </div> 

                <table>
                <tr>
                <th>
                    
                <div class="text-center">
                  <button type="submit" class="btn btn-success">Update Website Details</button>
                
              </form><!-- End Multi Columns Form -->
              </th>
              <th>
              <form method="get" action="{{ route('backend.website.setting') }}">
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