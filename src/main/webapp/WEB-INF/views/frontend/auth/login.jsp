
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>

<html lang="en">

<head>
    <title>ZUKI</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- title -->
    <title>ZUKI-Night Restaurant</title>

    <!-- favicon -->
    <link rel="shortcut icon" type="image/png" href="${BASE_URL}assets/img/favicon.png">
    <link rel="stylesheet" href="${BASE_URL}assets/bootstrap/bootstrap2.css">

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

        .main-background {
            background-image: url("${BASE_URL}assets/img/hand-painted-background.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
    </style>
</head>

<body class="main-background">

<div class="container-fluid ">

    <div class="row align-content-center">

        <!-- logo and main title -->
        <div class="col-12 mt-5">
            <div class="row">
                <div class="col-12 logo"></div>
                <div class="col-12">
                    <p class="text-center title1">Hi, Welcome to Our Night Restaurant..</p>
                </div>
            </div>
        </div>
        <!-- logo and main title -->

        <!-- image and fields -->
        <div class="col-12 px-5 py-4">
            <div class="row">
                <div class="col-6 d-none d-lg-block background">
                </div>
                <!-- sign up -->
                <div class="col-12 col-lg-6 d-none" id="signUpBox">
                    <div class="row g-2">
                        <div class="col-12">
                            <p class="title2">Create New Account</p>
                            <p class="text-danger" id="responseMessage"></p>
                        </div>
                        <div class="col-6">
                            <label class="form-label">First Name</label>
                            <input class="form-control" type="text" name="fname" id="fname" />
                        </div>
                        <div class="col-6">
                            <label class="form-label">Last Name</label>
                            <input class="form-control" type="text" name="lname" id="lname" />
                        </div>
                        <div class="col-12 col-lg-6 ">
                            <label class="form-label">Email</label>
                            <input class="form-control" type="text" name="email_1" id="email_1" />
                        </div>
                        <div class="col-12 col-lg-6">
                            <label class="form-label">Password</label>
                            <input class="form-control" type="password" name="password_1" id="password_1" />
                        </div>
                        <div class="col-6">
                            <label class="form-label">Mobile</label>
                            <input class="form-control" type="text" name="mobile" id="mobile" />
                        </div>
<%--                        <div class="col-6">--%>
<%--                            <label class="form-label">Gender</label>--%>
<%--                            <select class="form-select" id="gender">--%>
<%--                                <option value="0">Select Your Gender</option>--%>
<%--                                <option value="0">Select Your Gender</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
                        <div class="col-6">
                            <label class="form-label">City</label>
                            <input class="form-control" type="text" name="city" id="city" />
                        </div>
                        <div class="col-12 col-lg-6">
                            <label class="form-label">Address line 01</label>
                            <input class="form-control" type="text" name="line1" id="line1" />
                        </div>
                        <div class="col-12 col-lg-6">
                            <label class="form-label">Address line 02</label>
                            <input class="form-control" type="text" name="line2" id="line2" />
                        </div>
<%--                        <div class="col-6">--%>
<%--                            <label class="form-label">District</label>--%>
<%--                            <select class="form-select" id="district">--%>
<%--                                <option value="0">Select Your District</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
                        <div class="col-12 col-lg-6 d-grid">
                            <button class="btn btn-primary sign-up" >Sign Up</button>
                        </div>
                        <div class="col-12 col-lg-6 d-grid">
                            <button class="btn btn-dark" onclick="changeView();">Already have an account? Sign In </button>
                        </div>
                    </div>
                </div>

                <!-- sign in -->
                <div class="col-12 col-lg-6 " id="signInBox">
                    <div class="row g-3">
                        <div class="col-12">
                            <p class="title2">Sign In To Your Account</p>
                            <p class="text-danger" id="responseMessage2"></p>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Email</label>
                            <input class="form-control" type="text" name="username" id="username" />
                        </div>
                        <div class="col-12">
                            <label class="form-label">Password</label>
                            <input class="form-control" type="password" name="password" id="password"  />
                        </div>
                        <div class="col-6">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="remember" value="1">
                                <label class="form-check-label">Remember Me</label>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-check">
                                <a href="#" class="link-primary" >Forgot Password?</a>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 d-grid">
                            <button class="btn btn-primary btn-sign-in" >Sign In</button>
                        </div>
                        <div class="col-12 col-lg-6 d-grid">
                            <button class="btn btn-danger" onclick="changeView();">New to ZUKI? Join Now</button>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <!-- image and fields -->


    </div>

</div>

<!-- footer -->
<div class="col-12 d-none d-lg-block">
    <p class="text-center foot_title">&copy; 2023 zuki.com All Right Reserved</p>
</div>
<!-- footer -->

<!-- modal -->
<div class="modal fade" tabindex="-1" id="forgetPasswordModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Password Reset</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row g-3">
                    <div class="col-6">
                        <label class="form-label">New Password</label>
                        <div class="input-group mb-3">
                            <input class="form-control" type="password" id="np" />
                            <button class="btn btn-outline-primary" type="button" id="npb" >Show</button>
                        </div>
                    </div>
                    <div class="col-6">
                        <label class="form-label">Re-type Password</label>
                        <div class="input-group mb-3">
                            <input class="form-control" type="password" id="rnp" />
                            <button class="btn btn-outline-primary" type="button" id="rnpb" >Show</button>
                        </div>
                    </div>
                    <div class="col-12">
                        <label class="form-label">Verification Code</label>
                        <input class="form-control" type="text" id="vc" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" >Reset</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->


<script src="${BASE_URL}assets/bootstrap/js/bootstrap.js"></script>
<script>
    function changeView() {
        var signInBox = document.getElementById("signInBox");
        var signUpBox = document.getElementById("signUpBox");

        signInBox.classList.toggle("d-none");
        signUpBox.classList.toggle("d-none");
    }
</script>
<script type="text/javascript">
    document.querySelector('.sign-up').addEventListener('click',function(){
        let email = document.getElementById('email_1').value;
        let password = document.getElementById('password_1').value;
        let mobile = document.getElementById('mobile').value;
        let fname = document.getElementById('fname').value;
        let lname = document.getElementById('lname').value;
        let city = document.getElementById('city').value;
        let line1 = document.getElementById('line1').value;
        let line2 = document.getElementById('line2').value;

        fetch('${BASE_URL}register',{
            method:'post',
            headers:{
                'Content-Type':'application/json'
            },
            body:JSON.stringify({
                email:email,
                password:password,
                mobile:mobile,
                firstname:fname,
                lastname:lname,
                city:city,
                addressline01:line1,
                addressline02:line2
            })
        }).then(async response=>{
            if(response.ok){
                alert("Register Success & Check Your Email..");
                window.location.href="${BASE_URL}login"
            }else{
                // throw new Error();
                const errorMessage = await response.text();
                document.getElementById('responseMessage').innerHTML = errorMessage;
            }
        })
            .catch(error=>{

            })
    });

    document.querySelector('.btn-sign-in').addEventListener('click',function () {
        let email = document.querySelector("#username").value;
        let password = document.querySelector("#password").value;

        fetch('${BASE_URL}login',{
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
                // alert("response.text()");
                const errorMessage = await response.text();
                document.getElementById('responseMessage2').innerHTML = errorMessage;
            }
            return response.json();
        }).then(data=>{
            localStorage.setItem("accessToken",data.accessToken);
            localStorage.setItem("refreshToken",data.refreshToken);
            localStorage.setItem("expireIn",data.expireIn);

            //localStorage.setItem("token",JSON.stringify(data));
            window.location.href="${BASE_URL}"
        });

    });
</script>

</body>

</html>

