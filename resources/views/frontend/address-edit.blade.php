@extends('frontend.layouts.app')

@section('contents')

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--====== Section 2 ======-->
<div class="u-s-p-b-60">
    <!--====== Section Content ======-->
    <div class="section__content">
        <div class="dash">
            <div class="container">
                <div class="row editOptionParetn">
                    <div class="col-lg-12 col-md-12">
                        <div class="dash__box dash__box--bg-white">
                            <div class="dash__pad-2">
                                <h1 class="dash__h1 u-s-m-b-14 fa text-center d-block">Edit Address</h1>

                                <!-- Form Start -->
                                <form action="{{ route('frontend.address.update', $address->id) }}" method="POST">
                                    @csrf

                                    <!-- Row 1 -->
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="full_name">Full Name</label>
                                            <input type="text" name="full_name" value="{{ old('full_name', $address->full_name) }}" class="form-control" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="phone">Phone</label>
                                            <input type="text" name="phone" value="{{ old('phone', $address->phone) }}" class="form-control" required>
                                        </div>
                                    </div>

                                    <!-- Row 2 -->
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="province">Province</label>
                                            <select class="select-box select-box--primary-style" id="province" name="province">

                                                <option selected value="" disabled>Choose Province</option>
                                                @foreach($provinces as $id => $province_name)
                                                    <option value="{{ $id }}" {{ $id == $address->province_id ? 'selected' : '' }}>
                                                        {{ $province_name }}
                                                    </option>
                                                @endforeach
                                                
                                            </select>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="address">City</label>
                                            <select class="select-box select-box--primary-style" id="city" name="city">
                                                <option selected value="" disabled>Choose City</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <!-- Row 2 -->
                                    <div class="form-row">
                                        
                                        <div class="form-group col-md-6">
                                            <label for="address">Zone</label>
                                            <select class="select-box select-box--primary-style" id="zone" name="zone">
                                                <option selected value="" disabled>Choose Zone</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="province">Landmark (Optional)</label>
                                            <input type="text" name="landmark" value="{{ old('address', $address->landmark) }}" class="form-control">
                                        </div>
                                    </div>
                                    
                                    <!-- Row 3 -->
                                    <div class="form-row">
                                        
                                        <div class="form-group col-md-6">
                                            <label for="address">Address</label>
                                            <input type="text" name="address" value="{{ old('address', $address->address) }}" class="form-control" required>
                                        </div>
                                        
                                        <div class="form-group col-md-6">
                                            <label for="default_shipping">Address Type</label>
                                            <select class="select-box select-box--primary-style" name="address_type">

                                                <option selected value="" disabled>Choose Address Type</option>
                                                <option value="H" {{ $address->address_type === 'H' ? 'selected' : '' }}>Home</option>
                                                <option value="O" {{ $address->address_type === 'O' ? 'selected' : '' }}>Office</option>
                                                
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <!-- Submit Button -->
                                     <div class="buttonSubmitInEditAddress d-flex justify-evenly">
                                    <button type="submit" class="btn btn-primary mt-3">Update Address</button>
                               
                                    </div>
                                </form>
                                <!-- Form End -->

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

<script>
    $(document).ready(function() {
        var selectedCity = @json($selectedCity);
        var selectedZone = @json($selectedZone);
    
        $('select[name="province"]').on('change', function() {
            var province_id = $(this).val();
            if (province_id) {
                $.ajax({
                    url: "/getCity/" + province_id,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        var $citySelect = $('select[name="city"]');
                        $citySelect.empty();
    
                        $.each(data, function(key, value) {
                            var isSelected = (String(key) === String(selectedCity)) ? ' selected' : '';
                            $citySelect.append('<option value="' + key + '"' + isSelected + '>' + value + '</option>');
                        });
                        
                        // Fetch zones for the selected city if it exists
                        if (selectedCity) {
                            fetchZones(selectedCity);
                        }
    
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.log("AJAX Error: ", textStatus, errorThrown);
                    }
                });
            } else {
                $('select[name="city"]').empty();
                $('select[name="zone"]').empty();
            }
        });
        
        
        // Handle city change to fetch zones
        $('#city').on('change', function() {
            var city_id = $(this).val();
            if (city_id) {
                $.ajax({
                    url: "/getZones/" + city_id, // URL should match the route
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        console.log("Zones data:", data); // Debugging output
                        var $zoneSelect = $('#zone'); // Select zone dropdown
                        $zoneSelect.empty(); // Clear existing options
                        $zoneSelect.append('<option value="" disabled selected>Choose Zone</option>'); // Default option

                        // Populate zone options
                        $.each(data, function(key, value) {
                            $zoneSelect.append('<option value="' + key + '">' + value + '</option>');
                        });
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.error("AJAX Error: ", textStatus, errorThrown);
                    }
                });
            } else {
                $('#zone').empty().append('<option value="" disabled selected>Choose Zone</option>');
            }
        });

        // Function to fetch zones based on city_id
        function fetchZones(city_id) {
            $.ajax({
                url: "/getZone/" + city_id,
                type: "GET",
                dataType: "json",
                success: function(data) {
                    var $zoneSelect = $('select[name="zone"]');
                    $zoneSelect.empty();
                    
                    // Populate zone options
                    $.each(data, function(key, value) {
                        var isSelected = (String(key) === String(selectedZone)) ? ' selected' : '';
                        $zoneSelect.append('<option value="' + key + '"' + isSelected + '>' + value + '</option>');
                    });
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log("AJAX Error: ", textStatus, errorThrown);
                }
            });
        }
    
        var initialProvince = $('select[name="province"]').val();
        if (initialProvince) {
            $('select[name="province"]').trigger('change');
        }
    });
    </script>
    
    



@endsection
