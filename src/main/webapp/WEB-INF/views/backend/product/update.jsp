<%@taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<layout:extends name="admin_base">
  <layout:put block="contents">
    <!-- ============================================================== -->
    <!-- pageheader -->
    <!-- ============================================================== -->
    <div class="row">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="page-header">
          <h2 class="pageheader-title">Foods </h2>
          <p class="pageheader-text"></p>
          <div class="page-breadcrumb">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Foods</a></li>
                <li class="breadcrumb-item active" aria-current="page">View All</li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </div>
    <!-- ============================================================== -->
    <!-- end pageheader -->
    <!-- ============================================================== -->
    <div class="row">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
          <div class="card-header container-fluid">
            <div class="d-flex bd-highlight">
              <div class="flex-grow-1 bd-highlight"><h5 class="mb-0">All Foods</h5></div>
              <div class="bd-highlight"><a href="${BASE_URL}admin/product/add"
                                           class="btn btn-sm btn-primary">Add New</a></div>
            </div>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table id="table-products" class="table table-striped table-bordered second"
                     style="width:100%">
                <thead>
                <tr>
                  <th>Food Image</th>
                  <th>Category</th>
                  <th>Food Name</th>
                  <th>Food Price(Rs.)</th>
                  <th>Delivery Charge(Rs.)</th>
                  <th>Available Quantity</th>
                  <th>Description</th>
                  <th>Create date</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </layout:put>
  <layout:put block="script" type="REPLACE">
    <script>
      function loadProducts() {

        fetch('${BASE_URL}admin/api/v1/product')
                .then(response => response.json())
                .then(data => {
                  let table = document.querySelector('#table-products tbody');
                  table.innerHTML = "";
                  //document.querySelector('#table-products tbody').innerHTML = "";
                  data.forEach(async product => {
                    let row = table.insertRow();
                    let cell = row.insertCell();
                    await fetch(`${BASE_URL}admin/api/v1/category/`+ product.cid)
                            .then(categoryResponse => categoryResponse.json())
                            .then(categoryData => {
                              let cell = row.insertCell();
                              cell.innerHTML =categoryData.name;
                            });

                    let imgElement = document.createElement("img");
                    imgElement.src = "http://localhost:8080/zuki" + product.images;
                    imgElement.alt = "Product Image";
                    imgElement.style.width = "100px";
                    imgElement.style.height = "70px"
                    cell.appendChild(imgElement);

                    cell = row.insertCell();
                    cell.innerHTML = product.name;
                    cell = row.insertCell();
                    cell.innerHTML = product.price+".00";
                    cell = row.insertCell();
                    cell.innerHTML = product.discountPrice+".00";
                    cell = row.insertCell();
                    cell.innerHTML = product.quantity;
                    cell = row.insertCell();
                    cell.innerHTML = product.description;
                    cell = row.insertCell();
                    cell.innerHTML = product.createdAt;
                    cell = row.insertCell();
                    cell.innerHTML = '<a class="mr-2 text-primary" href="">Edit</a>' +
                            '<a class="text-danger" href="javascript:;" onclick="deleteProduct(' + product.id + ')">Delete</a>'
                  });

                });
      }


      function deleteProduct(id) {
        fetch('${BASE_URL}admin/api/v1/product/'+id,{
          method:'delete'
        }).then(response=>response.text())
                .then(text=>{
                  loadProducts();
                });
      }


      loadProducts();
    </script>
  </layout:put>
</layout:extends>