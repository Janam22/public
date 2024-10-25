@extends('frontend.layouts.master')
@section('content')
<!--====== App Content ======-->
<div class="app-content">

    <!--====== Section 1 ======-->
    <div class="u-s-p-y-60">

        <!--====== Section Content ======-->
        <div class="section__content">
            <div class="container">
                <div class="breadcrumb">
                    <div class="breadcrumb__wrap">
                        <ul class="breadcrumb__list">
                            <li class="has-separator">

                                <a href="{{ route('frontend.index') }}">Home</a>
                            </li>
                            <li class="is-marked">

                                <a href="{{ route('frontend.about') }}">About</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====== End - Section 1 ======-->


    <!--====== Section 2 ======-->
    <div class="u-s-p-b-60">

        <!--====== Section Content ======-->
        <div class="section__content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="about">
                            <div class="about__container">
                                <div class="about__info">
                                    <h2 class="about__h2">Discover Omsok: Your One-Stop Shop for Everything You Need</h2>
                                    <div class="about__p-wrap">
                                        <p class="about__p" style="text-align: justify;">Welcome to Omsok, where your shopping experience is seamless and diverse! Whether you’re searching for the latest electronics, fashionable clothing, home essentials, or unique gifts, Omsok has it all. We pride ourselves on offering an extensive selection of products that cater to every need and preference.</p>
                                        <p class="about__p" style="text-align: justify;">At Omsok, we believe in providing quality and convenience. Our user-friendly platform makes it easy to browse through thousands of items, compare options, and make informed choices. Plus, with our fast and reliable shipping, your orders arrive at your doorstep in no time.</p>
                                        <p class="about__p" style="text-align: justify;">Explore our categories and discover exclusive deals that fit your budget. Our commitment to customer satisfaction means you can shop with confidence, knowing that we prioritize your needs at every step.</p>
                                        <p class="about__p" style="text-align: justify;">Join the Omsok community today and experience the joy of shopping from the comfort of your home. Shop Now and unlock a world of possibilities!</p>
                                    </div>

                                    <a class="about__link btn--e-secondary" href="{{ route('frontend.index') }}" target="_blank">Shop
                                        Now</a>
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