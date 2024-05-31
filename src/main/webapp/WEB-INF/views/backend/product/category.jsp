<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>

<layout:extends name="admin_base">

    <layout:put block="contents">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-header">
                    <h2 class="pageheader-title">Category</h2>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
<%--                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Foods</a></li>--%>
                                <li class="breadcrumb-item active" aria-current="page">category</li>
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
                        <h3 class="section-title">Add New Category</h3>
                        <p></p>
                    </div>
                    <div class="card">
                        <h5 class="card-header">Category</h5>
                        <div class="card-body">
                            <div class="form-group">
                                <div class="row">
                                <label for="cat-name" class="col-form-label col-sm-12">Category Name</label>
                                <input id="cat-name" type="text" class="form-control col-sm-5 ml-3">
                                <p class="text-right col-sm-6">
                                    <button id="add-category" class="btn btn-space btn-primary">Save</button>
                                    <button class="btn btn-space btn-secondary">Cancel</button>
                                </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="table-category" class="table table-striped table-bordered second"
                                       style="width:100%">
                                    <thead>
                                    <tr>
                                        <th>Category</th>
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
        </form>

    </layout:put>
    <layout:put block="script">
        <script>

            document.querySelector('#add-category').addEventListener('click', (evt) => {
                evt.preventDefault();
                let categoryName = document.querySelector('#cat-name').value;

                fetch('${BASE_URL}admin/api/v1/category', {
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    method: 'post',
                    body: JSON.stringify({
                        name: categoryName
                    })
                }).then(response => response.json())
                    .then(data => {
                        <%--window.location.href = '${BASE_URL}admin/category';--%>
                        let qtyfield = document.getElementById('cat-name');
                        qtyfield.value='';
                        loadCategory();
                    })
            });

            function loadCategory() {
                fetch('${BASE_URL}admin/api/v1/category')
                    .then(response => response.json())
                    .then(data => {
                        let table = document.querySelector('#table-category tbody');
                        table.innerHTML = "";
                        data.forEach(category => {
                            let row = table.insertRow();
                            let cell = row.insertCell();
                            cell.innerHTML = category.name;
                            cell = row.insertCell();
                            cell.innerHTML = category.createdAt;
                            cell = row.insertCell();
                            cell.innerHTML = '<a class="mr-2 text-primary" href="">Edit</a>' +
                                '<a class="text-danger" href="javascript:;" onclick="deleteCategory(' + category.id + ')">Delete</a>'
                        });

                    });
            }

            function deleteCategory(id) {
                fetch('${BASE_URL}admin/api/v1/category/'+id,{
                    method:'delete'
                }).then(response=>response.text())
                    .then(text=>{
                        loadCategory();
                    });
            }


            loadCategory();

        </script>
    </layout:put>
</layout:extends>