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
                            <h1 class="section__heading u-c-secondary">VERIFY YOUR ACCOUNT</h1>
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
                                <h1 class="gl-h1">Account verification</h1>

                                <form class="l-f-o__form" method="POST" action="{{ route('frontend.account.verification') }}">
                                    @csrf
                                    <div class="u-s-m-b-30">
                                        <label class="gl-label" for="login-email">E-MAIL *</label>
                                        <input class="input-text input-text--primary-style" type="email" name="email" placeholder="Enter E-mail" required autofocus>
                                    </div>
                                    <div class="u-s-m-b-30">
                                        <label class="gl-label" for="login-password">VERIFICATION CODE *</label>
                                        <input class="input-text input-text--primary-style" type="text" name="user_verification_code" placeholder="Enter Verification Code" required>
                                    </div>
                                    <div class="gl-inline">
                                        <div class="u-s-m-b-30">
                                            <input type="hidden" name="verification_code" value="{{ $code }}">
                                            <button class="btn btn--e-transparent-brand-b-2" type="submit">VERIFY</button>
                                        </div>
                                        <div class="u-s-m-b-30">
                                            <a class="gl-link" href="">Resend Code?</a>
                                        </div>
                                    </div>
                                </form>
                                
                                <div class="l-f-o__pad-box">
                                    <h1 class="gl-h1">ACCOUNT ALREADY VERIFIED?</h1>
                                    <div class="u-s-m-b-15">
                                        <a class="l-f-o__create-link btn--e-transparent-brand-b-2" href="{{ route('frontend.signin') }}">LOGIN NOW</a>
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
