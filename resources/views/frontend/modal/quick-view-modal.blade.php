            <!--====== Quick Look Modal ======-->
            <div class="modal fade" id="quick-look">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content modal--shadow">

                        <button class="btn dismiss-button fas" type="button"
                            data-dismiss="modal">X</button>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-5">

                                    <!--====== Product Detail ======-->
                                    <div class="pd u-s-m-b-30">
                                        <div class="pd-wrap">
                                            <div id="js-product-detail-modal">
                                                <div>
                                                   <img class="u-img-fluid" src="" alt="" id="shop_list_full_image_quick_view">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--====== End - Product Detail ======-->
                                </div>
                                <div class="col-lg-7">

                                    <!--====== Product Right Side Details ======-->
                                    <div class="pd-detail">
                                        <div>

                                            <span class="pd-detail__name" id="pd-detail__name"></span>
                                        </div>
                                        <div>
                                            <div class="pd-detail__inline">

                                                <span class="pd-detail__price" id="pd-detail__price"></span>
                                                <span class="pd-detail__discount" id="pd-detail__discount"></span><del class="pd-detail__del" id="pd-detail_del"></del>
                                            </div>
                                        </div>
                                        <div class="u-s-m-b-15">
                                            <div class="pd-detail__inline">

                                                <span class="pd-detail__stock" id="pd-detail__stock"></span>
                                            </div>
                                        </div>
                                        <div class="u-s-m-b-15">
                                            <form class="pd-detail__form" method="POST"
                                                action="{{ route('cart.add') }}">
                                                @csrf
                                                <div class="pd-detail-inline-2">
                                                    <div class="u-s-m-b-15">
                                                    <div class="d-flex justify-between align-items-center">
                                                        <!--====== Input Counter ======-->
                                                        <div class="input-counter-quickView input-counter">
                                                            <span class="input-counter__minus fas fa-minus"></span>
                                                            <input
                                                                class="input-counter__text input-counter--text-primary-style"
                                                                type="text" value="1"
                                                                name="quantity" data-min="1"
                                                                data-max="1000">
                                                            <span class="input-counter__plus fas fa-plus"></span>
                                                        </div>

                                                        <button class="btn btn--e-brand-b-2" type="submit">Add to Cart</button>
                                                        </div>
                                                        <!--====== End - Input Counter ======-->
                                                    </div>
                                                    <div class="u-s-m-b-15 ">
                                                        <input type="hidden" name="product_code">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <!--====== End - Product Right Side Details ======-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====== End - Quick Look Modal ======-->