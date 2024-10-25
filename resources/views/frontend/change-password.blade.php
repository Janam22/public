@extends('frontend.layouts.app')
@section('contents')

    <!--====== Section 2 ======-->
    <div class="u-s-p-b-60 editOptionParetn">
        <!--====== Section Content ======-->
        <div class="section__content">
            <div class="dash">
                <div class="container">
                    <div class="row rowParentProfileEdit">
                        <div class="col-lg-6 col-md-12">
                            <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white">
                                <div class="dash__pad-2">
                                    <h1 class="dash__h1 u-s-m-b-14 centerBlockText fa">Change Password</h1>

                                    <form class="l-f-o__form" method="POST" action="{{ route('frontend.password.update') }}">
                                        @csrf
                                        <div class="formParentExceptBtn d-flex justify-content-center flex-wrap">
                                        <div class="form-row col-md-12">
                                            <div class="form-group col-md-12">
                                                <label for="old_password">Old Password</label>
                                                <div class="input-group">
                                                    <input type="password" name="old_password" class="form-control" placeholder="Old Password" required id="old_password">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text" onclick="togglePassword('old_password', this)" style="cursor: pointer;">
                                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-row col-md-12">
                                            <div class="form-group col-md-12">
                                                <label for="new_password">New Password</label>
                                                <div class="input-group">
                                                    <input type="password" name="new_password" class="form-control" placeholder="New Password" required id="new_password">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text" onclick="togglePassword('new_password', this)" style="cursor: pointer;">
                                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-row col-md-12">
                                            <div class="form-group col-md-12">
                                                <label for="confirm_new_password">Confirm New Password</label>
                                                <div class="input-group">
                                                    <input type="password" name="confirm_new_password" class="form-control" placeholder="Confirm New Password" required id="confirm_new_password">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text" onclick="togglePassword('confirm_new_password', this)" style="cursor: pointer;">
                                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="u-s-m-b-15">
                                            <input type="hidden" value="{{ $customer_user->id }}" name="customer_id">
                                            <input type="hidden" value="janampandey2@gmail.com" name="userName">
                                        </div>
                                        </div>
                                        
                                        <br/>
                                        <div class="btnUpdateProfile d-flex justify-content-around">
                                            <button class="btn btn--e-transparent-brand-b-2" type="submit">CHANGE PASSWORD</button>
                                        </div>

                                    </form>

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
        function togglePassword(inputId, element) {
            const input = document.getElementById(inputId);
            const icon = element.querySelector('i');
        
            if (input.type === "password") {
                input.type = "text";
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                input.type = "password";
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        }

    </script>
@endsection