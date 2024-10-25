 <!--Quick View Modal  -->
<!--Quick View Modal  -->
@include('frontend.modal.quick-view-modal')
<!--Quick View Modal  -->
<!--Quick View Modal -->

<!--Add To Cart Modal  -->
<!--Add To Cart Modal  -->
@include('frontend.modal.cart-modal')
<!--Add To Cart Modal  -->
<!--Add To Cart Modal  -->
<!--====== Main Footer ======-->
<footer>
    <div class="outer-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="outer-footer__content u-s-m-b-40">

                        <span class="outer-footer__content-title">Contact Us</span>
                        <div class="outer-footer__text-wrap"><i class="fas fa-home footerIcons"></i>
                            <span>{{ $websitedata->address }}</span>
                        </div>
                        <div class="outer-footer__text-wrap"><i class="fas fa-phone-volume footerIcons"></i>
                            <span>{{ $websitedata->primary_phone }}</span>
                        </div>
                        <div class="outer-footer__text-wrap"><i class="far fa-envelope footerIcons"></i>
                            <span>{{ $websitedata->primary_email }}</span>
                        </div>
                        <div class="outer-footer__social">
                            <ul>
                                <li>
                                    <a class="s-fb--color-hover" href="#"><i class="fab fa-facebook-f footerIcons"></i></a>
                                </li>
                                <li>
                                    <a class="s-tw--color-hover" href="#"><i class="fab fa-twitter footerIcons"></i></a>
                                </li>
                                <li>
                                    <a class="s-youtube--color-hover" href="#"><i class="fab fa-youtube footerIcons"></i></a>
                                </li>
                                <li>
                                    <a class="s-insta--color-hover" href="#"><i class="fab fa-instagram footerIcons"></i></a>
                                </li>
                                <li>
                                    <a class="s-gplus--color-hover" href="#"><i class="fab fa-google-plus-g footerIcons"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="outer-footer__content u-s-m-b-40">

                                <span class="outer-footer__content-title">Information</span>
                                <div class="outer-footer__list-wrap">
                                    <ul>
                                        <li>
                                            <a href="{{ route('frontend.cart') }}">Cart</a>
                                        </li>
                                        
                                        @auth('customer')
                                        <li>
                                            <a href="{{ route('frontend.dash-my-wishlist') }}">Wishlist</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('frontend.account') }}">Account</a>
                                        </li>
                                        @endauth
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="outer-footer__content u-s-m-b-40">
                                <div class="outer-footer__list-wrap">
                                    <span class="outer-footer__content-title">Our Company</span>
                                    <ul>
                                        <li>
                                            <a href="{{ route('frontend.about') }}">About us</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('frontend.contact') }}">Contact Us</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('frontend.contact') }}">Privacy Policy</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('frontend.contact') }}">Terms of Conditions</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="outer-footer__content">

                        <span class="outer-footer__content-title">Join our Newsletter</span>
                        <form class="newsletter" method="POST" action="{{ route('frontend.newsletter.store') }}">
                            @csrf
                            <div class="u-s-m-b-15">
                                <div class="radio-box newsletter__radio">

                                    <input type="radio" value="M" id="male" name="gender" required>
                                    <div class="radio-box__state radio-box__state--primary">
                                        <label class="radio-box__label" for="male">Male</label>
                                    </div>
                                </div>
                                <div class="radio-box newsletter__radio">

                                    <input type="radio" value="F" id="female" name="gender" required> 
                                    <div class="radio-box__state radio-box__state--primary">
                                        <label class="radio-box__label" for="female">Female</label>
                                    </div>
                                </div>
                            </div>
                            <div class="newsletter__group">

                                <label for="newsletter"></label>

                                <input class="input-text input-text--only-white" type="text" id="newsletter"
                                    placeholder="Enter your Email" name="email" required>

                                <button class="btn btn--e-brand newsletter__btn" type="submit">SUBSCRIBE</button>
                            </div>

                            <span class="newsletter__text">Subscribe to the mailing list to receive updates on
                                promotions, new arrivals, discount and coupons.</span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="lower-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="lower-footer__content">
                        <div class="lower-footer__copyright">

                            <span>Copyright &copy; {{ now()->year }}</span>

                            <a href="https://omsok.com/">{{ $websitedata->company_name }}</a>

                            <span>All Right Reserved</span>
                        </div>
                        <div class="lower-footer__payment">
                            <ul>
                                <li><i class="fab fa-cc-stripe"></i></li>
                                <li><i class="fab fa-cc-paypal"></i></li>
                                <li><i class="fab fa-cc-mastercard"></i></li>
                                <li><i class="fab fa-cc-visa"></i></li>
                                <li><i class="fab fa-cc-discover"></i></li>
                                <li><i class="fab fa-cc-amex"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<!--====== Modal Section ======-->

<!--====== End - Modal Section ======-->
</div>
<!--====== End - Main App ======-->


<script src="{{ asset('public/client-side/js/navbar.js') }}"></script>

<!--====== Vendor Js ======-->
<script src="{{ asset('public/client-side/js/vendor.js') }}"></script>

<!--====== jQuery Shopnav plugin ======-->
<script src="{{ asset('public/client-side/js/jquery.shopnav.js') }}"></script>
<script src="{{ asset('public/client-side/js/crousal.js') }}"></script>
<script src="{{ asset('public/client-side/js/app.js') }}"></script>
<script src="{{ asset('public/client-side/js/bootstrapmin.js') }}"></script>
<script src="{{ asset('public/client-side/js/bootstrapmin.js') }}"></script>
<script src="{{ asset('public/client-side/js/custom.js') }}"></script>

<script>
    var baseUrl = "{{ asset('https://omsok.com/public/') }}"; // This sets baseUrl to your application's asset URL
</script>



<script>
    function toggleDropdown(id) {
        const dropdown = document.getElementById(id);
        const isVisible = dropdown.style.display === 'block';

        // Hide all dropdowns
        const dropdowns = document.querySelectorAll('.filter-dropdown');
        dropdowns.forEach(dd => dd.style.display = 'none');

        // Toggle the clicked dropdown
        dropdown.style.display = isVisible ? 'none' : 'block';
    }
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Check if there's an error message in the session
        @if (Session::has('error'))
        var errorMessage = "{{ Session::get('error') }}";
        showModal('Error!', errorMessage, 'red');
        @endif

        // Check if there's a success message in the session
        @if (Session::has('success'))
        var successMessage = "{{ Session::get('success') }}";
        showModal('Success!', successMessage, 'green');
        @endif

        function showModal(title, message, type) {
            var modalTitle = document.querySelector('#statusModalLabel');
            var modalBody = document.querySelector('#modalBody');
            
            modalTitle.textContent = title;
            modalBody.innerHTML = `<div class="alert alert-${type} fs-4" style="background-color:white; color: {{ $websitedata->header_theme_color }}; border:none;">${message}</div>`;
            
            var statusModal = new bootstrap.Modal(document.getElementById('statusModal'));
            statusModal.show();

            // Example of manually hiding the modal
            document.querySelector('.btn-close').addEventListener('click', function() {
            statusModal.hide();
    });
        }
    });
    </script>
  
<script>
    $(document).ready(function() {
        // shop list full modal section code
        $(document).on("click", ".getAddToCartModal", function() {
            var id = $(this).attr("id").split("|");
            $("input[name='product_code']").val(id[0]);
            $("#success__name").text(id[1]);
            $("#success__price").text(id[2]);
            $("#success__available_quantity").text(id[3] + ' in stock');
            $("#shop_list_full_image_add_to_cart").attr("src", id[4]); 
            $("#add-to-cart").modal('show');
        });
    
        $(".dismiss-button").on("click", function() {
            $("#add-to-cart").modal('hide');
        });
    
        $(document).on("click", ".getQuickViewModal", function() {
            var id = $(this).attr("id").split("|");
            $("input[name='product_code']").val(id[0]);
            $("#pd-detail__name").text(id[1]);
            $("#pd-detail__price").text(id[2]);
            var discount = id[3]; 
            $("#pd-detail__discount").text(`(${discount} % OFF)`);
            $("#pd-detail_del").text(id[4]);
            $("#pd-detail__stock").text(id[5] + ' in stock');
            $("#shop_list_full_image_quick_view").attr("src", id[6]); 
            $("#quick-look").modal('show');
        });
    
        $(".dismiss-button").on("click", function() {
            $("#quick-look").modal('hide');
        });
    
        // Load more product code here 
        var page = 2; // Initialize page counter
    
        $('.load-more-btn').on('click', function() {
            // AJAX request
            $.ajax({
                url: '{{ route("frontend.index") }}',
                method: 'GET',
                data: { page: page },
                beforeSend: function () {
                    $('.load-more-btn').text('Loading...'); // Change button text while loading
                },
                success: function(response) {
                    if (response.products.length > 0) {
                        // Append loaded products to container
                        var productsHtml = '<div class="row rowOfItems mt-50">';
    
                        $.each(response.products, function(index, product) {
                            var mrPrice = parseFloat(product.mr_price);
                            var sellPrice = parseFloat(product.sell_price);
                            var discountPercentage = (mrPrice > 0) 
                                ? Math.round(((mrPrice - sellPrice) / mrPrice) * 100) 
                                : 0;
    
                            productsHtml += `
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item itemsOfRow">
                                    <a class="product-o-link" href="/product-details/${product.product_code}">
                                        <div class="product-o product-o--hover-on product-o--radius">
                                            <div class="product-o__wrap">
                                                <div class="aspect aspect--bg-grey aspect--square u-d-block">
                                                    ${product.images && product.images.length > 0 ? `
                                                        <img class="aspect__img" src="${baseUrl}${product.images[0].image_path}" alt="${product.product_name}">
                                                    ` : `
                                                        <img class="aspect__img" src="${baseUrl}client-side/images/no-image.png" alt="No image available">
                                                    `}
                                                </div>
                                            </div>
                                            <span class="product-o__name productName">${product.product_name}</span>
                                            <div class="product-o__rating gl-rating-style">
                                                ${generateRatingStars(product.average_rating)} <!-- Call a function to generate stars -->
                                                <span class="product-o__review">(${product.review_count})</span>
                                            </div>
                                            <span>${product.brand_name ? product.brand_name : "Brand Not Available"}</span>
                                            <span class="product-o__price">
                                                ${product.sell_price} 
                                                <span class="product-o__discount">${product.mr_price}</span>
                                            </span>
                                        </a>
                                        <div class="quickvewandAddtocart">
                                            <button class="Productoption quickViewBtnHompepage getQuickViewModal" 
                                                id="${product.product_code}|${product.product_name}|${product.sell_price}|${discountPercentage}|${product.mr_price}|${product.available_quantity}|${product.images.length > 0 ? baseUrl + product.images[0].image_path : baseUrl + 'client-side/images/no-image.png'}"
                                                title="Quick View">
                                                <i class="fas fa-search-plus"></i> Quick View
                                            </button>
                                            <button class="Productoption addtoCartBtnHompepage getAddToCartModal" 
                                                id="${product.product_code}|${product.product_name}|${product.sell_price}|${product.available_quantity}|${product.images.length > 0 ? baseUrl + product.images[0].image_path : baseUrl + 'client-side/images/no-image.png'}"
                                                title="Add to Cart">
                                                <i class="fas fa-shopping-cart"></i> Add to Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>`;
                        });
    
                        productsHtml += '</div>';
                        $('#partials-filter-top-trending').append(productsHtml);
                        page++; // Increment page counter
                        $('.load-more-btn').text('Load More'); // Reset button text after loading
                    } else {
                        // No more products to load
                        $('.load-more-btn').text('No more products');
                        $('.load-more-btn').attr('disabled', 'disabled');
                    }
                },
                error: function(xhr, status, error) {
                    console.error('Error loading more products:', error);
                }
            });
        });
    
        // Function to generate star ratings
        function generateRatingStars(averageRating) {
            let starsHtml = '';
            for (let i = 1; i <= 5; i++) {
                if (i <= Math.floor(averageRating)) {
                    starsHtml += '<i class="fas fa-star"></i>'; // Filled star
                } else if (i === Math.ceil(averageRating) && averageRating - Math.floor(averageRating) >= 0.5) {
                    starsHtml += '<i class="fas fa-star-half-alt"></i>'; // Half star
                } else {
                    starsHtml += '<i class="far fa-star"></i>'; // Empty star
                }
            }
            return starsHtml;
        }
    });
</script>

    @yield('customJs')
</body>

</html>