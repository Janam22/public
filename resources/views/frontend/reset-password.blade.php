@extends('frontend.layouts.master')

@section('content')
<!--====== App Content ======-->
<div class="app-content">

    <!--====== Section 2 ======-->
    <div class="u-s-p-b-60">

        <!--====== Section Intro ======-->
        <div class="section__intro u-s-m-b-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section__text-wrap">
                            <h1 class="section__heading u-c-secondary">RESET YOUR PASSWORD</h1>
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
                                <h1 class="gl-h1">Reset Password</h1>

                                <form class="l-f-o__form" method="POST" action="{{ route('frontend.forgot.password.reset') }}">
                                    @csrf
                                    <div class="u-s-m-b-30">
                                        <label class="gl-label" for="login-email">E-MAIL *</label>
                                        <input class="input-text input-text--primary-style" type="email" name="email" placeholder="Enter E-mail" required>
                                    </div>
                                    <div class="u-s-m-b-30">
                                        <label class="gl-label" for="reset-code">RESET CODE *</label>
                                        <input class="input-text input-text--primary-style" type="text" name="reset_code" placeholder="Enter Reset Code" required>
                                    </div>
                                    
                                    <div class="u-s-m-b-30">
                                        <label class="gl-label" for="login-password">NEW PASSWORD *</label>
                                        <input class="input-text input-text--primary-style" type="password" name="new_password" placeholder="New Password" required>
                                    </div>
                                    
                                    <div class="u-s-m-b-30">
                                        <label class="gl-label" for="login-password">CONFIRM PASSWORD *</label>
                                        <input class="input-text input-text--primary-style" type="password" name="confirm_new_password" placeholder="Re-Enter New Password" required>
                                    </div>
                                    
                                    <div class="gl-inline">
                                        <div class="u-s-m-b-30">
                                            <button class="btn btn--e-transparent-brand-b-2" type="submit">RESET PASSWORD</button>
                                        </div>
                                    </div>
                                </form>
                                
                                <div class="l-f-o__pad-box">
                                    <div class="u-s-m-b-15">
                                        <a class="l-f-o__create-link btn--e-transparent-brand-b-2" href="{{ route('frontend.signin') }}">CANCEL</a>
                                    </div>
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
</div>
<!--====== End - App Content ======-->
@endsection
