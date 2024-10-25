<!--====== Add to Cart Modal ======-->
<div class="modal fade" id="add-to-cart">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content modal-radius modal-shadow">

            <button class="btn dismiss-button fas" type="button"
                data-dismiss="modal">X</button>
            <div class="modal-body">

                <form class="pd-detail__form" method="POST"
                    action="{{ route('cart.add') }}">
                    @csrf
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="success u-s-m-b-30">
                                <div class="success__img-wrap">
                                    <img class="u-img-fluid" src="" alt="" id="shop_list_full_image_add_to_cart">
                                </div>

                                <div class="success__info-wrap">

                                    <span class="success__name" id="success__name"></span>
                                    <span class="success__price" id="success__available_quantity" style="color:green;"></span>
                                    <div class="d-flex justify-between align-items-center">
                                    <div class="input-counter-quickView input-counter">
                                        <span
                                            class="input-counter__minus fas fa-minus"></span>
                                        <input
                                            class="input-counter__text input-counter--text-primary-style"
                                            type="text" value="1" name="quantity"
                                            data-min="1" data-max="1000">
                                        <span
                                            class="input-counter__plus fas fa-plus"></span>
                                    </div>
                                    <span class="success__price" id="success__price"></span>
                                </div>
                                </div>
     
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="s-option">
                                <div class="s-option__link-box">
                                    <a class="s-option__link btn--e-white-brand-shadow"
                                        href="{{ route('frontend.index') }}">CONTINUE
                                        SHOPPING</a>
                                    <a class="s-option__link btn--e-white-brand-shadow"
                                        href="{{ route('frontend.cart') }}">GO TO CART</a>
                                    <input type="hidden" name="product_code"
                                        value="">
                                    <button class="s-option__link btn--e-brand-shadow "
                                        type="submit">ADD
                                        TO CART</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--====== Add to Cart Modal ======-->