<!DOCTYPE html>

<html>

<head>
    <title>ZUKI | Admin | Sign In</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="${assets}/img/favicon.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="bootstrap.css" />
    <link rel="stylesheet" href="style.css" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&family=Open+Sans:wght@400;600;700&display=swap');
        @font-face {
            font-family: "Roboto";
            src: url("${BASE_URL}assets/fonts/ROBOTO-LIGHT.TTF");
        }

        .logo {
            height: 100px;
            background-image: url("${BASE_URL}assets/img/zukilogo.svg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: contain;
        }

        .title1 {
            /*font-family: "Colonna";*/
            font-family: 'Dancing Script', cursive;
            font-size: 40px;
            font-weight: bold;
        }

        .title2 {
            font-family: "Roboto";
            font-size: 18px;
            font-weight: bold;
        }

        .foot_title {
            margin-top: 20px;
            font-size: 13px;
        }

        .background {
            background-image: url("${BASE_URL}assets/img/Food-delivery-logo.png");
            background-repeat: no-repeat;
            background-position: center;
            background-size: contain;
        }

    </style>
</head>

<body style="background-image: linear-gradient(to top, #b7213c, #cf5e71, #e091a2, #edc2cf, #f9f4f6);">

<div class="container-fluid vh-100 d-flex justify-content-center">
    <div class="row align-content-center">

        <div class="col-12">
            <div class="row">
                <div class=" col-12 logo"></div>
                <div class="col-12">
                    <p class="text-center title1">Hi, Welcome To ZUKI Admins</p>
                </div>
            </div>
        </div>

        <div class="col-12 p-5">
            <div class="row">
                <div class="col-6 d-none d-lg-block background"></div>
                <div class="col-12 col-lg-6 d-block">
                    <div class="row g-3">
                        <div class="col-12">
                            <p class="title2">Sign In To Your Account</p>
                            <p class="text-danger" id="errorMessage"></p>
                        </div>
                        <div class="col-12">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" name="username" id="username" />
                        </div>
                        <div class="col-12">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" id="password" />
                        </div>
                        <div class="col-12 col-sm-6 d-grid">
                            <button class="btn btn-success btn-sign-in" >Sign In</button>
                        </div>
                        <div class="col-12 col-sm-6 d-grid">
                            <button class="btn btn-dark">Back to user's log in</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Modal -->
        <div class="modal fade" id="verificationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Admin Verification</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <label class="form-label">Enter the verification code you got by an email.</label>
                        <p class="text-danger" id="errorMessage2"></p>
                        <input type="text" class="form-control" id="verification-code"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary btn-verify"  >Verify</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->



        <div class="col-12 d-none d-lg-block fixed-bottom">
            <p class="text-center foot_title">&copy;2023 zuki.com All Right Reserved</p>
        </div>




    </div>
</div>



<script>
    function adminverification() {
        var verificationModal = document.getElementById("verificationModal");
        k = new bootstrap.Modal(verificationModal);
        k.show();
    }

    function verify() {
        k.hide();
        alert("okk");
    }


    document.querySelector('.btn-sign-in').addEventListener('click',function () {
        let email = document.querySelector("#username").value;
        let password = document.querySelector("#password").value;

        fetch('${BASE_URL}admin/login',{
            method:'post',
            headers:{
                'Content-Type':'application/json'
            },
            body:JSON.stringify({
                email:email,
                password:password
            })
        }).then(async response=>{
            if(!response.ok){
                // console.log(response.text());
                const errorMessage = await response.text();
                document.getElementById('errorMessage').innerHTML = errorMessage;
            }else{
                adminverification();
            }
            return response.json();

        }).then(data=>{

            // localStorage.setItem("accessToken",data.accessToken);
            // localStorage.setItem("refreshToken",data.refreshToken);
            // localStorage.setItem("expireIn",data.expireIn);

            //localStorage.setItem("token",JSON.stringify(data));
            // adminverification();
            window.location.href="${BASE_URL}admin/login"
        });

    });

    document.querySelector('.btn-verify').addEventListener('click',function () {
        let vcode = document.querySelector("#verification-code").value;

        fetch('${BASE_URL}admin/verify/'+ vcode,{
            method:'post',

        }).then(response=>response.text())
            .then(text=>{
                if(text=='ok'){
                    fetch('${BASE_URL}admin/setSession', {
                        method: 'post',
                    }).then(response => response.text())
                        .then(sessionText => {
                            if (sessionText == 'session-set') {
                                // Redirect to the homepage
                                console.log('success set session.');
                                window.location.href = '${BASE_URL}admin';
                            } else {
                                console.log('Failed to set session.');
                            }
                        });
                }else{
                    document.getElementById('errorMessage2').innerHTML = text;
                }


            });

    });

</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>
