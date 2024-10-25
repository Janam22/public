<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Frontend\FrontendLoginController;
use App\Http\Controllers\Frontend\DashboardController;
use App\Http\Controllers\Frontend\FrontendCartController;
use App\Http\Controllers\Frontend\FrontendAccountController;
use App\Http\Controllers\Frontend\FrontendDeliveryInformationController;
use App\Http\Controllers\Frontend\FrontendRegistrationController;
use App\Http\Controllers\Frontend\FrontendOrderCancelController;
use App\Http\Controllers\Frontend\FrontendWishlistController;
use App\Http\Controllers\Frontend\FrontendReviewsController;
use App\Http\Controllers\Frontend\QueueController;
use App\Http\Controllers\Backend\InquiryController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Backend\ProfileController;
use App\Http\Controllers\Backend\WebsiteController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Backend\CustomerController;
use App\Http\Controllers\Backend\LoadProductsAPIController;
use App\Http\Controllers\Backend\OrderController;
use App\Http\Controllers\Backend\FAQSController;
use App\Http\Controllers\Backend\ReviewRatingController;
use App\Http\Controllers\Backend\NewsletterController;
use App\Http\Controllers\Backend\SetAPIController;
use App\Http\Controllers\Backend\ShippingController;
use App\Http\Controllers\Backend\ProvinceController;
use App\Http\Controllers\Backend\ProductImagesController;
use App\Http\Controllers\Backend\OrderCancelController;
use App\Http\Controllers\Backend\AddressZoneController;
use App\Http\Controllers\Frontend\FilterProductsController;
use App\Http\Controllers\Backend\OptimizationController;
use App\Http\Controllers\Backend\AdminDashboardController;
use Illuminate\Support\Facades\Route;

// route for the cron job, it needs token
Route::get('/optimize-clear-cron', [OptimizationController::class, 'optimizeClearCron']);

//Load Products from OMS API cron, it needs token
Route::get('/load-products-cron', [LoadProductsAPIController::class, 'loadProductsCron']);

//Order Processing cron, it needs token
Route::get('/jobs-queue-cron', [QueueController::class, 'jobsqueueCron']);

Route::middleware(['auth', 'verified'])->prefix('admin')->group(function () {

    Route::get('/dashboard', [AdminDashboardController::class, 'index'])->name('backend.dashboard');
    
    //Optimization clear
    Route::get('/optimize-clear', [OptimizationController::class, 'optimizeClear'])->name('backend.optimization');
    
    //Profile
    Route::get('/profile', [ProfileController::class, 'edit'])->name('backend.profile.profile');
    Route::post('/profile/update', [ProfileController::class, 'update'])->name('backend.profile.update');
    Route::post('/profile/change-password', [ProfileController::class, 'changepassword'])->name('backend.profile.change-password');

    //SET API
    Route::get('/set-api', [SetAPIController::class, 'index'])->name('backend.setapi.index');
    Route::get('/set-api/add', [SetAPIController::class, 'add'])->name('backend.setapi.add');
    Route::post('/set-api', [SetAPIController::class, 'store'])->name('backend.setapi.store');
    Route::post('/set-api/edit', [SetAPIController::class, 'edit'])->name('backend.setapi.edit');
    Route::post('/set-api/{id}', [SetAPIController::class, 'update'])->name('backend.setapi.update');
    Route::delete('/set-api/{id}', [SetAPIController::class, 'delete'])->name('backend.setapi.delete');

    //Products
    Route::get('/products', [ProductController::class, 'index'])->name('backend.products.index');
    Route::post('/products/view', [ProductController::class, 'view'])->name('backend.products.view');

    //Customers
    Route::get('/customers', [CustomerController::class, 'index'])->name('backend.customers.index');
    Route::post('/customers/view', [CustomerController::class, 'view'])->name('backend.customers.view');

    //Orders
    Route::get('/orders', [OrderController::class, 'index'])->name('backend.orders.index');
    Route::get('/order/{id}', [OrderController::class, 'show'])->name('backend.orders.view');

    //Order Cancel
    Route::get('/set-cancel-reasons', [OrderCancelController::class, 'index'])->name('backend.cancelreasons.index');
    Route::get('/set-cancel-reasons/add', [OrderCancelController::class, 'add'])->name('backend.cancelreasons.add');
    Route::post('/set-cancel-reasons', [OrderCancelController::class, 'store'])->name('backend.cancelreasons.store');
    Route::delete('/set-cancel-reasons/{id}', [OrderCancelController::class, 'delete'])->name('backend.cancelreasons.delete');
    Route::post('/set-cancel-reasons/edit', [OrderCancelController::class, 'edit'])->name('backend.cancelreasons.edit');
    Route::post('/set-cancel-reasons/{id}', [OrderCancelController::class, 'update'])->name('backend.cancelreasons.update');

    //Reviews and Ratings
    Route::get('/reviews-ratings', [ReviewRatingController::class, 'index'])->name('backend.ratings.index');
    Route::delete('/reviews-ratings/{id}', [ReviewRatingController::class, 'delete'])->name('backend.ratings.delete');

    //FAQS
    Route::get('/faqs', [FAQSController::class, 'index'])->name('backend.faqs.index');

    //Set Shipping
    Route::get('/set-shipping', [ShippingController::class, 'index'])->name('backend.setshipping.index');
    Route::post('/set-shipping/view', [ShippingController::class, 'view'])->name('backend.setshipping.view');
    Route::get('/set-shipping/add', [ShippingController::class, 'add'])->name('backend.setshipping.add');
    Route::post('/set-shipping', [ShippingController::class, 'store'])->name('backend.setshipping.store');
    Route::post('/set-shipping/edit', [ShippingController::class, 'edit'])->name('backend.setshipping.edit');
    Route::post('/set-shipping/{id}', [ShippingController::class, 'update'])->name('backend.setshipping.update');
    Route::delete('/set-shipping/{id}', [ShippingController::class, 'delete'])->name('backend.setshipping.delete');

    //Set Address City Zone
    Route::get('/address-zone', [AddressZoneController::class, 'index'])->name('backend.addresszone.index');
    Route::post('/address-zone', [AddressZoneController::class, 'store'])->name('backend.addresszone.store');
    Route::post('/address-zone/view', [AddressZoneController::class, 'view'])->name('backend.addresszone.view');
    Route::post('/address-zone/edit', [AddressZoneController::class, 'edit'])->name('backend.addresszone.edit');
    Route::post('/address-zone/{id}', [AddressZoneController::class, 'update'])->name('backend.addresszone.update');
    Route::delete('/address-zone/{id}', [AddressZoneController::class, 'delete'])->name('backend.addresszone.delete');

    //Load Products from OMS API
    Route::get('/load-products-api', [LoadProductsAPIController::class, 'index'])->name('backend.loadproductsapi.index');

    //Upload product image from local system or url
    Route::get('/upload-product-images', [ProductImagesController::class, 'index'])->name('backend.uploadproductimages.index');
    Route::post('/upload-now', [ProductImagesController::class, 'import_image'])->name('backend.uploadnow.index');
    Route::get('/download-template', [ProductImagesController::class, 'downloadTemplate'])->name('backend.downloadTemplate');
    Route::post('/upload-products', [ProductImagesController::class, 'upload_products'])->name('backend.uploadnow.products');

    //Inquiries
    Route::get('/inquiries', [InquiryController::class, 'index'])->name('backend.inquiries.index');
    Route::post('/inquiries/view', [InquiryController::class, 'view'])->name('backend.inquiries.view');
    Route::delete('/inquiries/{id}', [InquiryController::class, 'delete'])->name('backend.inquiries.delete');

    //Newsletter Subscribers
    Route::get('/newsletter-subscribers', [NewsletterController::class, 'index'])->name('backend.newsletters.index');
    Route::post('/newsletter-subscriber/view', [NewsletterController::class, 'view'])->name('backend.newsletters.view');
    Route::delete('/newsletter-subscriber/{id}', [NewsletterController::class, 'delete'])->name('backend.newsletters.delete');

    //Provinces
    Route::get('/provinces', [ProvinceController::class, 'index'])->name('backend.provinces.index');
    Route::get('/provinces/add', [ProvinceController::class, 'add'])->name('backend.provinces.add');
    Route::post('/provinces', [ProvinceController::class, 'store'])->name('backend.provinces.store');
    Route::post('/provinces/view', [ProvinceController::class, 'view'])->name('backend.provinces.view');
    Route::post('/provinces/edit', [ProvinceController::class, 'edit'])->name('backend.provinces.edit');
    Route::post('/provinces/{id}', [ProvinceController::class, 'update'])->name('backend.provinces.update');
    Route::delete('/provinces/{id}', [ProvinceController::class, 'delete'])->name('backend.provinces.delete');

    //Users
    Route::get('/users', [UserController::class, 'index'])->name('backend.users.index');
    Route::get('/users/add', [UserController::class, 'add'])->name('backend.users.add');
    Route::post('/users', [UserController::class, 'store'])->name('backend.users.store');
    Route::post('/users/view', [UserController::class, 'view'])->name('backend.users.view');
    Route::post('/users/edit', [UserController::class, 'edit'])->name('backend.users.edit');
    Route::post('/users/{id}', [UserController::class, 'update'])->name('backend.users.update');
    Route::delete('/users/{id}', [UserController::class, 'delete'])->name('backend.users.delete');

    //Website and Carousel Images Data
    Route::get('/website', [WebsiteController::class, 'data'])->name('backend.website.setting');
    Route::post('/website/{id}', [WebsiteController::class, 'update'])->name('backend.website.update');
    Route::get('/website-carousel', [WebsiteController::class, 'carousel_data'])->name('backend.website.carousel');
    Route::post('/website-carousel/{id}', [WebsiteController::class, 'carousel_update'])->name('backend.website.carousel_update');

});

// Frontend section 

Route::get('/', [DashboardController::class, 'index'])->name('frontend.index');
Route::get('/404', [DashboardController::class, 'unexpectedError'])->name('frontend.404');
Route::get('/about', [DashboardController::class, 'about'])->name('frontend.about');
Route::get('/best-sale', [DashboardController::class, 'bestSale'])->name('frontend.bestSale');
Route::get('/checkout', [DashboardController::class, 'checkout'])->name('frontend.checkout');
Route::get('/contact', [DashboardController::class, 'contact'])->name('frontend.contact');
Route::get('/explore', [DashboardController::class, 'explore'])->name('frontend.explore');
Route::get('/lost-password', [DashboardController::class, 'lostPassword'])->name('frontend.lost-password');
Route::get('/newarrival', [DashboardController::class, 'newarrival'])->name('frontend.newarrival');
Route::get('/product-details/{product_code}', [DashboardController::class, 'productDetails'])->name('frontend.product-detail');
Route::get('/shop-list-full', [DashboardController::class, 'shopListFull'])->name('frontend.shop-list-full');
// Products filter route 
// Products filter route 
Route::post('/filter-products-by-category', [FilterProductsController::class, 'topTrendingFilterProducts'])->name('frontend.partials-filter.top-trending-filter');
Route::post('/filter-products-whats-new', [FilterProductsController::class, 'whatsNewFilterProducts'])->name('frontend.partials-filter.whats-new');
Route::get('/filter-products', [FilterProductsController::class, 'filterProducts'])->name('frontend.partials-filter.product-list');
Route::get('/explore-filter-products', [FilterProductsController::class, 'exploreFilterProducts'])->name('frontend.partials-filter.explore-filter');
// Route::post('/filter-products-by-price', [DashboardController::class, 'filterProductsByPrice'])->name('frontend.partials-filter.filter-products-price');
// Route::post('/filter-products-by-brand', [DashboardController::class, 'filterByBrand'])->name('frontend.partials-filter.products-filter-brandwise');
// Route::post('/clear-session', [DashboardController::class, 'clearSession'])->name('frontend.partials-filter.clear-session');
Route::get('/whatsnew', [DashboardController::class, 'whatsnew'])->name('frontend.whatsnew');

Route::post('/newsletter', [DashboardController::class, 'newsletter_store'])->name('frontend.newsletter.store');
Route::post('/contact', [DashboardController::class, 'inquiry_store'])->name('frontend.inquiry_store');

Route::get('/cart', [FrontendCartController::class, 'cart'])->name('frontend.cart');
Route::post('/cart-add', [FrontendCartController::class, 'addItem'])->name('cart.add');
Route::post('/cart/update', [FrontendCartController::class, 'update'])->name('cart.update');
Route::post('/cart/remove', [FrontendCartController::class, 'removeItem'])->name('cart.remove');
Route::post('/cart/clear', [FrontendCartController::class, 'clear'])->name('cart.clear');
Route::post('/cart', [FrontendCartController::class, 'cart_shippingcost'])->name('frontend.cart.getshippingcost');
Route::get('/getCities/{province_id}', [FrontendCartController::class, 'getCities']);
Route::get('/getZones/{city_id}', [FrontendCartController::class, 'getZones']);

Route::post('/delivery-information', [FrontendDeliveryInformationController::class, 'add_delivery_information'])->name('frontend.delivery.information');
Route::post('/place-order', [FrontendDeliveryInformationController::class, 'create_order'])->name('frontend.place.order');

//Signin
Route::get('/signin', [FrontendLoginController::class, 'signin'])->name('frontend.signin');
Route::post('/customer-signin', [FrontendLoginController::class, 'login'])->name('customer.signin');
Route::get('/check-session', [FrontendLoginController::class, 'checkSession'])->name('frontend.checkSession');
Route::get('/forgot-password', [FrontendLoginController::class, 'forgot_password'])->name('frontend.forgot.password');
Route::post('/forgot-password-code', [FrontendLoginController::class, 'forgot_password_code'])->name('frontend.forgot.password.code');
Route::get('/account-reset-password', [FrontendLoginController::class, 'reset_password'])->name('frontend.password.reset.verify');
Route::post('/reset-password-verify', [FrontendLoginController::class, 'reset_password_verify'])->name('frontend.forgot.password.reset');

//Send email verification code and signup
Route::get('/signup', [FrontendRegistrationController::class, 'signup'])->name('frontend.signup');
Route::post('/register', [FrontendRegistrationController::class, 'register'])->name('customer.register');
Route::get('/verify/{code}', [FrontendRegistrationController::class, 'showVerificationPage'])->name('account.verification');
Route::post('/account-verification', [FrontendRegistrationController::class, 'VerifyAccount'])->name('frontend.account.verification');

//Reviews
Route::post('/review-add', [FrontendReviewsController::class, 'addReview'])->name('reviews.add');

Route::middleware('auth:customer')->group(function () {
    Route::get('/account', [FrontendAccountController::class, 'account'])->name('frontend.account');
    Route::get('/dash-cancellation', [DashboardController::class, 'dashCancellation'])->name('frontend.dash-cancellation');
    Route::get('/dash-my-order', [FrontendAccountController::class, 'dashMyOrder'])->name('frontend.dash-my-order');
    Route::get('/profile-edit', [FrontendAccountController::class, 'profile_edit'])->name('frontend.profile.edit');
    Route::post('/profile-update', [FrontendAccountController::class, 'profile_update'])->name('frontend.profile.update');
    Route::get('/change-password', [FrontendAccountController::class, 'change_password'])->name('frontend.change.password');
    Route::post('/password-update', [FrontendAccountController::class, 'password_update'])->name('frontend.password.update');
    
    //For Wishlist
    Route::get('/dash-my-wishlist', [FrontendWishlistController::class, 'dashMyWishlist'])->name('frontend.dash-my-wishlist');
    Route::post('/wishlist-add', [FrontendWishlistController::class, 'addItem'])->name('wishlist.add');

    //For Reviews
    Route::get('/dash-my-reviews', [FrontendReviewsController::class, 'dashMyReviews'])->name('frontend.dash-my-reviews');
    
    //For Order cancellation
    Route::get('/cancel-order', [FrontendOrderCancelController::class, 'MyOrderCancellation'])->name('frontend.myorder.cancel');
    Route::post('/cancel-my-order', [FrontendOrderCancelController::class, 'CancelMyOrder'])->name('frontend.myorder.docancel');

    //For address 
    Route::get('/address-book', [FrontendAccountController::class, 'address_book'])->name('frontend.address.book');
    Route::get('/address-add', [FrontendAccountController::class, 'address_add'])->name('frontend.address.add');
    Route::post('/address-create', [FrontendAccountController::class, 'address_create'])->name('frontend.address.create');
    Route::post('/address-edit/{id}', [FrontendAccountController::class, 'address_edit'])->name('frontend.address.edit');
    Route::post('/address-update/{id}', [FrontendAccountController::class, 'address_update'])->name('frontend.address.update');
    Route::get('/address/setDefaultShipping/{id}', [FrontendAccountController::class, 'setDefaultShipping'])->name('frontend.address.setDefaultShipping');
    Route::get('/address/setDefaultBilling/{id}', [FrontendAccountController::class, 'setDefaultBilling'])->name('frontend.address.setDefaultBilling');
    Route::get('/getCity/{province_id}', [FrontendAccountController::class, 'getCity']);
    Route::get('/getZone/{city_id}', [FrontendAccountController::class, 'getZone']);

});

require __DIR__ . '/auth.php';
