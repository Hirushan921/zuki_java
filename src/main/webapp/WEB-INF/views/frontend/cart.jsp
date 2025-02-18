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
              <p>Healthy and Delicious</p>
              <h1>Cart</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end breadcrumb section -->

    <!-- cart -->
    <div class="cart-section mt-150 mb-150">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-12">
            <div class="cart-table-wrap">
              <table class="cart-table">
                <thead class="cart-table-head">
                <tr class="table-head-row">
                  <th class="product-remove"></th>
                  <th class="product-image">Food Name</th>
                  <th class="product-name">Description</th>
                  <th class="product-price">Price</th>
                  <th class="product-quantity">Quantity</th>
                  <th class="product-total">Total</th>
                </tr>
                </thead>
                <tbody>
                <tr class="table-body-row">
                  <td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
                  <td class="product-name">Kottu</td>
                  <td class="product-name">Chicken Full Package</td>
                  <td class="product-price">Rs.850.00</td>
                  <td class="product-quantity"><input type="number" placeholder="2"></td>
                  <td class="product-total">Rs.1700.00</td>
                </tr>
                <tr class="table-body-row">
                  <td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
                  <td class="product-name">Fried Rice</td>
                  <td class="product-name">Chicken Half Package</td>
                  <td class="product-price">Rs.700.00</td>
                  <td class="product-quantity"><input type="number" placeholder="1"></td>
                  <td class="product-total">Rs.700.00</td>
                </tr>
                <tr class="table-body-row">
                  <td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
                  <td class="product-name">Noodles</td>
                  <td class="product-name">Mix Package</td>
                  <td class="product-price">Rs.500.00</td>
                  <td class="product-quantity"><input type="number" placeholder="1"></td>
                  <td class="product-total">Rs.500.00</td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="total-section">
              <table class="total-table">
                <thead class="total-table-head">
                <tr class="table-total-row">
                  <th>Total</th>
                  <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <tr class="total-data">
                  <td><strong>Subtotal: </strong></td>
                  <td>Rs.2900.00</td>
                </tr>
                <tr class="total-data">
                  <td><strong>Shipping: </strong></td>
                  <td>Rs.250.00</td>
                </tr>
                <tr class="total-data">
                  <td><strong>Total: </strong></td>
                  <td>Rs.3150.00</td>
                </tr>
                </tbody>
              </table>
              <div class="cart-buttons">
                <a href="cart.html" class="boxed-btn">Update Cart</a>
                <a href="${BASE_URL}checkout" class="boxed-btn black">Check Out</a>
              </div>
            </div>

            <div class="coupon-section">
              <h3>Delivery Address</h3>
              <div class="coupon-form-wrap">
                <form action="#">
                  <p><input type="text" placeholder="No.3/121,Magallegama."></p>
                  <p><input type="submit" value="Apply"></p>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end cart -->


  </layout:put>
</layout:extends>