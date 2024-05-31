
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>

<layout:extends name="base">
  <layout:put block="content" type="REPLACE">


<!-- home page slider -->
<div class="homepage-slider">
  <!-- single home slider -->
  <div class="single-homepage-slider homepage-bg-1">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-7 offset-lg-1 offset-xl-0">
          <div class="hero-text">
            <div class="hero-text-tablecell">
              <p class="subtitle">The Best Night Restaurant For You..</p>
              <h1>WELCOME TO ZUKI</h1>
              <div class="hero-btns">
                <a href="${BASE_URL}menu" class="boxed-btn">Food Collection</a>
                <a href="${BASE_URL}contact" class="bordered-btn">Contact Us</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- single home slider -->
  <div class="single-homepage-slider homepage-bg-2">
    <div class="container">
      <div class="row">
        <div class="col-lg-10 offset-lg-1 text-center">
          <div class="hero-text">
            <div class="hero-text-tablecell">
              <p class="subtitle">Plan Your Favourite Dinner With Us..</p>
              <h1>Various Types Of Delicious Foods</h1>
              <div class="hero-btns">
                <a href="${BASE_URL}menu" class="boxed-btn">Visit Menu</a>
                <a href="${BASE_URL}contact" class="bordered-btn">Contact Us</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- single home slider -->
  <div class="single-homepage-slider homepage-bg-3">
    <div class="container">
      <div class="row">
        <div class="col-lg-10 offset-lg-1 text-right">
          <div class="hero-text">
            <div class="hero-text-tablecell">
              <p class="subtitle">Let's Order Now..</p>
              <h1>Fast & Safe Delivery</h1>
              <div class="hero-btns">
                <a href="${BASE_URL}menu" class="boxed-btn">Visit Menu</a>
                <a href="${BASE_URL}contact" class="bordered-btn">Contact Us</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end home page slider -->

<!-- features list section -->
<div class="list-section pt-80 pb-80">
  <div class="container">

    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
        <div class="list-box d-flex align-items-center">
          <div class="list-icon">
            <i class="fas fa-shipping-fast"></i>
          </div>
          <div class="content">
            <h3>Fast Delivery</h3>
            <p>With low cost fee</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
        <div class="list-box d-flex align-items-center">
          <div class="list-icon">
            <i class="fas fa-phone-volume"></i>
          </div>
          <div class="content">
            <h3>Call center Support</h3>
            <p>Get support for orders</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="list-box d-flex justify-content-start align-items-center">
          <div class="list-icon">
            <i class="fas fa-sync"></i>
          </div>
          <div class="content">
            <h3>Take away option</h3>
            <p>Pickup your order from restaurant</p>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
<!-- end features list section -->

<!-- product section -->
<div class="product-section mt-150 mb-150">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 offset-lg-2 text-center">
        <div class="section-title">
          <h3><span class="orange-text">Our</span> Foods</h3>
          <a href="#" class="cart-btn">View More >></a>
<%--          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>--%>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
          <div class="product-image">
            <a href="${BASE_URL}productview"><img src="${BASE_URL}assets/img/products/kottu.jpg" alt=""></a>
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
<!-- end product section -->






  </layout:put>
</layout:extends>




