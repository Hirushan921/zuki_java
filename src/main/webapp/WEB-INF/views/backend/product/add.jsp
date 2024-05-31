<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>

<layout:extends name="admin_base">
    <layout:put block="style">
<%--        <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">--%>
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <link rel="stylesheet" href="${admin_assets}/vendor/bootstrap-select/css/bootstrap-select.css">

    </layout:put>
    <layout:put block="contents">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Add Foods</h2>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Foods</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Add</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

            <form id="form-add-product" autocomplete="off" novalidate="novalidate">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="section-block" id="basicform">
                            <h3 class="section-title">Add New Food Item</h3>
                            <p></p>
                        </div>
                        <div class="card">
                            <h5 class="card-header">Food</h5>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="product-name" class="col-form-label">Food Name</label>
                                    <input id="product-name" type="text" class="form-control col-sm-6">
                                </div>
                                <div class="form-group">
                                    <label for="category" class="col-form-label">Category</label>
                                    <select id="category" title="Select" class="form-control selectpicke col-sm-6">
                                        <option>Select</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="product-price" class="col-form-label">Item Price</label>
                                    <input id="product-price" type="text" class="form-control col-sm-6">
                                </div>
                                <div class="form-group">
                                    <label for="qty" class="col-form-label">Quantity</label>
                                    <input id="qty" type="text" class="form-control col-sm-6">
                                </div>
                                <div class="form-group">
                                    <label for="delivery-charge" class="col-form-label">Delivery Charge</label>
                                    <input id="delivery-charge" type="text" class="form-control col-sm-6">
                                </div>
                                <div class="form-group">
                                    <label for="product-description">Description</label>
                                    <textarea class="form-control" id="product-description"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Item Images</h5>
                            <div class="card-body">
                                <div class="row">
                                    <div id="image-dev"></div>
                                </div>

                                <div class="row pt-2 pt-sm-5 mt-1">
                                    <div class="col-sm-12 pl-0">
                                        <p class="text-right">
                                            <button id="add-product" class="btn btn-space btn-primary">Save</button>
                                            <button class="btn btn-space btn-secondary">Cancel</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>



    </layout:put>
    <layout:put block="script">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
        <script src="${admin_assets}/libs/js/spartan-multi-image-picker.js"></script>
        <script src="${admin_assets}/vendor/bootstrap-select/js/bootstrap-select.js"></script>
        <script>
            $('#product-description').summernote({
                height: 200
            });

            $('#image-dev').spartanMultiImagePicker({
                fieldName: 'file[]',
                maxCount: 5
            });

            document.querySelector('#add-product').addEventListener('click', (evt) => {
                evt.preventDefault();
                let productName = document.querySelector('#product-name').value;
                let productPrice = document.querySelector('#product-price').value;
                let productDiscount = document.querySelector('#delivery-charge').value;
                let category = document.querySelector('#category').value;
                let quantity = document.querySelector('#qty').value;
                let productDescription = $('#product-description').summernote('code');
                console.log(productDescription)
                console.log(category)

                fetch('${BASE_URL}admin/api/v1/product', {
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    method: 'post',
                    body: JSON.stringify({
                        name: productName,
                        price: productPrice,
                        quantity: quantity,
                        cid:category,
                        discountPrice: productDiscount,
                        description: productDescription
                    })
                }).then(response => response.json())
                    .then(data => {
                        uploadImages(data.pid);
                    })
            });

            function uploadImages(id) {
                let formData = new FormData();
                let inputs = document.querySelectorAll('input[type=file]');
                inputs.forEach((input, index) => {
                    if (index !== 0 && index !== inputs.length - 1) {
                        let file = input.files[0];
                        formData.append("file[]", file);
                    }
                });

                fetch('${BASE_URL}admin/api/v1/product/' + id + '/upload-image', {
                    method: 'post',
                    body: formData
                }).then(response => response.json())
                    .then(data => {
                        console.log(data);
                        window.location.href = '${BASE_URL}admin/product';
                    });
            }

            function loadCategoryOp() {
                fetch('${BASE_URL}admin/api/v1/category')
                    .then(response => response.json())
                    .then(data => {
                        let select = document.getElementById('category');
                        data.forEach(category => {
                            let option = document.createElement('option');
                            option.value = category.id;
                            option.text = category.name;
                            select.appendChild(option);
                        });

                    });
            }
            loadCategoryOp();

        </script>
    </layout:put>
</layout:extends>