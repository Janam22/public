@extends('frontend.layouts.master')
@section('content')

<style>


    /* Style for the input field */
    .input-group .input-text {
        flex: 1;
        /* Take up available space */
        border-radius: 0;
        /* Remove border radius for a seamless look */
 
        height: auto !important;
    }
input{
    font-size: 18px !important;
}
    /* Style for the button link */
    .input-group .buttonVrrification {
        margin-left: -1px;
        /* Remove space between input and button */
        border-radius: 0;
        /* Remove border radius for a seamless look */
        background-color: orangered;
        /* Button background color */
        color: #fff;
        /* Button text color */
        border: 1px solid orangered;
        /* Border color matching the button */
        padding: 10px 20px;
        /* Button padding */
    }

        /* Centered Alerts Container */
        #alerts-container {
            position: fixed;
            /* Ensure the container stays in view */
            margin-top: 200px;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            /* Adjust width if needed */
            max-width: 400px;
            /* Adjust max width if needed */
            text-align: center;
            /* Center the text inside the alerts */
            z-index: 1050;
            /* Ensure it's above other content */
        }

        /* Optional: Additional styling for alerts */
        .alert {
            margin-bottom: 10px;
            /* Space between alerts */
        }

        /* Custom colors for alerts */
        .alert-info-custom {
            background-color: blue;
            /* blue */
            color: white;
            /* Dark blue text */
        }

        .alert-success-custom {
            background-color: green;
            /* Light green */
            color: white;
            /* Dark green text */
        }

        .alert-danger-custom {
            background-color: red;
            /* Light red */
            color: white;
            /* Dark red text */
        }
  
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--====== App Content ======-->
<div class="app-content">

    <!--====== Section 1 ======-->
    <div class="u-s-p-y-60">

        <!--====== Section 2 ======-->
        <div class="u-s-p-b-60">

            <!--====== Section Intro ======-->
            <div class="section__intro u-s-m-b-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section__text-wrap">
                                <h1 class="section__heading u-c-secondary">CREATE AN ACCOUNT</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====== End - Section Intro ======-->


            <!--====== Section Content ======-->
            <div class="section__content">
                <div class="container">
                    <div class="row row--center">
                        <div class="col-lg-6 col-md-8 u-s-m-b-30">
                            <div class="l-f-o">
                                <div class="l-f-o__pad-box">
                                    <h1 class="gl-h1">PERSONAL INFORMATION</h1>
                                    <form class="l-f-o__form" id="registration-form" method="post"
                                        action="{{ route('customer.register') }}">
                                        @csrf

                                        <div class="u-s-m-b-30">

                                            <label class="gl-label" for="reg-fname">FULL NAME *</label>
                                            <input class="input-text input-text--primary-style" name="full_name"
                                                type="text" placeholder="Full Name"
                                                value="{{ $registerData['full_name'] }}" required>
                                        </div>
                                        
                                        <div class="u-s-m-b-30">
                                            <label class="gl-label" for="reg-email">EMAIL *</label>
                                            <div class="input-group sendVerBtnParen">
                                                <input id="reg-email" class="input-text input-text--primary-style"
                                                    name="email" type="text" placeholder="Enter Email"
                                                    value="{{ $registerData['email'] }}" required>
                                            </div>
                                        </div>

                                        <div class="u-s-m-b-30">
                                            <label class="gl-label" for="reg-lname">MOBILE NUMBER *</label>
                                            <input class="input-text input-text--primary-style" name="phone" type="text"
                                                placeholder="Phone" value="{{ $registerData['phone'] }}" required>
                                        </div>

                                        <div class="u-s-m-b-30">
                                            <label class="gl-label" for="reg-password">PASSWORD *</label>
                                            <input class="input-text input-text--primary-style" name="password"
                                                type="password" placeholder="Enter Password"
                                                value="{{ $registerData['password'] }}" required>
                                        </div>

                                        <div class="u-s-m-b-15">
                                            <button class="btn btn--e-transparent-brand-b-2" type="submit">CREATE
                                                ACCOUNT</button>
                                            <p>By clicking "CREATE ACCOUNT" I agree to <a href="">Terms of Use</a> and
                                                <a href="">Privacy Policy</a></p>
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
    </div>
    <!--====== End - App Content ======-->


    <!-- Alerts Container -->
    <div id="alerts-container" class="position-fixed top-0 right-0 p-3" style="z-index: 1050;">
        <!-- Success Alert -->
        <div id="success-alert" class="alert alert-success alert-dismissible fade show alert-success-custom"
            role="alert" style="display: none;">
            <strong></strong> <span id="success-message"></span>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <!-- Error Alert -->
        <div id="error-alert" class="alert alert-danger alert-dismissible fade show alert-danger-custom" role="alert"
            style="display: none;">
            <strong></strong> <span id="error-message"></span>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <!-- Info Alert -->
        <div id="info-alert" class="alert alert-info alert-dismissible fade show alert-info-custom" role="alert"
            style="display: none;">
            <strong></strong> <span id="info-message"></span>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>



    <script>
        $(document).ready(function () {
            $('#send-code').on('click', function (event) {
                event.preventDefault(); // Prevent default anchor behavior

                var email = $('#reg-email').val();
                if (!email) {
                    $('#info-message').text('Please enter an email address.');
                    $('#info-alert').show();
                    return;
                }

                // Display "sending" alert
                $('#info-message').text('Sending email, please wait...');
                $('#info-alert').show();

                $.ajax({
                    url: '/send-verification-code', // Your backend route
                    method: 'POST',
                    data: {
                        email: email,
                        _token: '{{ csrf_token() }}' // CSRF token for Laravel
                    },
                    success: function (response) {
                        $('#success-message').text(response.message);
                        $('#success-alert').show();
                        $('#info-alert').hide(); // Hide the sending alert
                        $('#verification-code').val(response.code); // Store the verification code
                    },
                    error: function (xhr) {
                        $('#error-message').text(xhr.responseJSON.message);
                        $('#error-alert').show();
                        $('#info-alert').hide(); // Hide the sending alert
                    },
                    complete: function () {
                        // Optionally hide the alerts after some time
                        setTimeout(function () {
                            $('#success-alert').fadeOut();
                            $('#error-alert').fadeOut();
                        }, 10000); // Hide alerts after 10 seconds
                    }
                });
            });
        });
    </script>



    @endsection