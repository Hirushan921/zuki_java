<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>

<layout:extends name="base">
    <layout:put block="content" type="REPLACE">


        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>See more Details</p>
                            <h1>Single Product</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- single product -->
        <div class="single-product mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="single-product-img">
                            <img src="${BASE_URL}assets/img/products/kottu.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="single-product-content">
                            <h3>Chicken Full Kottu</h3>
                            <p class="single-product-pricing"><span>full package</span> Rs.850.00</p>
                            <p>Curry and Souce included</p>
                            <p>10 packs available now</p>
                            <div class="single-product-form">
                                <form action="index.html">
                                    <input type="number" placeholder="0">
                                </form>
                                <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                                <a href="" class="cart-btn"><i class="fas fa-money-bill-wave"></i> Buy Now</a>
<%--                                <p><strong>Categories: </strong>Fruits, Organic</p>--%>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end single product -->

        <!-- more products -->
        <div class="more-products mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="section-title">
                            <h3><span class="orange-text">Related</span> Products</h3>
<%--                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="single-product-item">
                            <div class="product-image">
                                <a href="single-product.html"><img src="${BASE_URL}assets/img/products/kottu.jpg" alt=""></a>
                            </div>
                            <h3>Kottu</h3>
                            <p class="product-price"><span>Chicken Full Package</span> Rs.850.00 </p>
                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="single-product-item">
                            <div class="product-image">
                                <a href="single-product.html"><img src="${BASE_URL}assets/img/products/friedrice.jpg" alt=""></a>
                            </div>
                            <h3>Fried Rice</h3>
                            <p class="product-price"><span>Egg Full Package</span> Rs.800.00 </p>
                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0 text-center">
                        <div class="single-product-item">
                            <div class="product-image">
                                <a href="single-product.html"><img src="${BASE_URL}assets/img/products/noodles.jpg" alt=""></a>
                            </div>
                            <h3>Noodles</h3>
                            <p class="product-price"><span>Mix Full Package</span> Rs.500.00 </p>
                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end more products -->


    </layout:put>
</layout:extends>

