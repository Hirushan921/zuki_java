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
                            <p id="a1">Healthy and Delicious</p>
                            <h1>Menu</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="product-filters">
                            <ul id="pcat">
                                <li class="active" data-filter="*">All</li>
<%--                                <li data-filter=".Kottu">Kottu</li>--%>
<%--                                <li data-filter=".friedrice">Fried rice</li>--%>
<%--                                <li data-filter=".Noodles">Noodles</li>--%>
<%--                                <li data-filter=".Biriyani">Biriyani</li>--%>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row " id="productContainr">
<%--                    <div class="col-lg-4 col-md-6 text-center kottu">--%>
<%--                        <div class="single-product-item">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="${BASE_URL}productview"><img src="${BASE_URL}assets/img/products/kottu.jpg" alt=""></a>--%>
<%--                            </div>--%>
<%--                            <h3>Kottu</h3>--%>
<%--                            <p class="product-price"><span>Chicken Full Package</span> Rs.850.00 </p>--%>
<%--                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 text-center friedrice">--%>
<%--                        <div class="single-product-item">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="single-product.html"><img src="${BASE_URL}assets/img/products/friedrice.jpg" alt=""></a>--%>
<%--                            </div>--%>
<%--                            <h3>Fried Rice</h3>--%>
<%--                            <p class="product-price"><span>Egg Full Package</span> Rs.800.00 </p>--%>
<%--                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 text-center noodles">--%>
<%--                        <div class="single-product-item">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="single-product.html"><img src="${BASE_URL}assets/img/products/noodles.jpg" alt=""></a>--%>
<%--                            </div>--%>
<%--                            <h3>Noodles</h3>--%>
<%--                            <p class="product-price"><span>Mix Full Package</span> Rs.500.00 </p>--%>
<%--                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 text-center kottu">--%>
<%--                        <div class="single-product-item">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="single-product.html"><img src="${BASE_URL}assets/img/products/kottu.jpg" alt=""></a>--%>
<%--                            </div>--%>
<%--                            <h3>Kottu</h3>--%>
<%--                            <p class="product-price"><span>Chicken Half Package</span> Rs.700.00 </p>--%>
<%--                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 text-center friedrice">--%>
<%--                        <div class="single-product-item">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="single-product.html"><img src="${BASE_URL}assets/img/products/friedrice.jpg" alt=""></a>--%>
<%--                            </div>--%>
<%--                            <h3>Fried Rice</h3>--%>
<%--                            <p class="product-price"><span>Chicken Full Package</span> Rs.900.00 </p>--%>
<%--                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 text-center biriyani">--%>
<%--                        <div class="single-product-item">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="${BASE_URL}productview"><img src="${BASE_URL}assets/img/products/biriyani.jpg" alt=""></a>--%>
<%--                            </div>--%>
<%--                            <h3>Biriyani</h3>--%>
<%--                            <span>Special Full Package</span>--%>
<%--                            <p class="product-price">Rs.900.00 </p>--%>
<%--                            <a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>

                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="pagination-wrap">
                            <ul>
                                <li><a href="#">Prev</a></li>
                                <li><a href="#">1</a></li>
                                <li><a class="active" href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">Next</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end products -->


    </layout:put>
    <layout:put block="script" type="REPLACE">
        <script>
            function loadProducts() {
                fetch('${BASE_URL}admin/api/v1/product')
                    .then(response => response.json())
                    .then(data => {
                        // Get the product container
                        const productContainer = document.getElementById('productContainr');

                        // Loop through each product in the data
                        data.forEach(product => {
                            // Create elements for the product card
                            const productCard = document.createElement('div');
                            fetch(`${BASE_URL}admin/api/v1/category/`+ product.cid)
                                .then(categoryResponse => categoryResponse.json())
                                .then(categoryData => {
                                  let cname = categoryData.name;
                                    productCard.className = 'col-lg-4 col-md-6 text-center ' + cname;
                                });

                            const productItem = document.createElement('div');
                            productItem.className = 'single-product-item';

                            const productImage = document.createElement('div');
                            productImage.className = 'product-image';

                            const imageLink = document.createElement('a');
                            imageLink.href = 'single-product.html';

                            let imgElement = document.createElement("img");
                            imgElement.src = "http://localhost:8080/zuki" + product.images;
                            imgElement.alt = "Product Image";
                            imgElement.style.width = "250px";
                            imgElement.style.height = "180px"

                            imageLink.appendChild(imgElement);
                            productImage.appendChild(imageLink);

                            const productName = document.createElement('h3');
                            productName.textContent = product.name;

                            const productDescription = document.createElement('span');
                            productDescription.innerHTML = product.description;

                            const productPrice = document.createElement('p');
                            productPrice.className = 'product-price';
                            let pprice = "Rs. "+ product.price +".00";
                            productPrice.innerHTML = pprice;

                            const cartBtn = document.createElement('a');
                            cartBtn.href = 'cart.html';
                            cartBtn.className = 'cart-btn';
                            cartBtn.innerHTML = '<i class="fas fa-shopping-cart"></i> Add to Cart';

                            // Append elements to the product card
                            productItem.appendChild(productImage);
                            productItem.appendChild(productName);
                            productItem.appendChild(productDescription);
                            productItem.appendChild(productPrice);
                            productItem.appendChild(cartBtn);

                            productCard.appendChild(productItem);

                            // Append the product card to the container
                            productContainer.appendChild(productCard);
                        });
                    })
                    .catch(error => {
                        console.error('Error fetching products:', error);
                    });
            }

            function loadCategoryOp() {
                fetch('${BASE_URL}admin/api/v1/category')
                    .then(response => response.json())
                    .then(data => {
                        let pcat = document.getElementById('pcat');
                        data.forEach(category => {
                            let li = document.createElement('li');
                            li.innerHTML = category.name;
                            pcat.appendChild(li);
                        });

                    });
            }
             loadCategoryOp();

            // Call the function to load products when the page loads
            window.onload = loadProducts;
        </script>
    </layout:put>
</layout:extends>
