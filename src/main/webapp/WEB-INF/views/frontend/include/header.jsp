<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- header -->
<div class="top-header-area" id="sticker">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 text-center">
                <div class="main-menu-wrap">
                    <!-- logo -->
                    <div class="site-logo">
                        <a href="#">
                            <img src="${BASE_URL}assets/img/logo.png" alt="">
                        </a>
                    </div>
                    <!-- logo -->

                    <!-- menu start -->
                    <nav class="main-menu">
                        <ul>
                            <li class="current-list-item"><a href="${BASE_URL}">Home</a></li>
                            <li><a href="${BASE_URL}about">About</a></li>
                            <li><a href="${BASE_URL}contact">Contact</a></li>
                            <li><a href="${BASE_URL}menu">Menu</a></li>
                            <li><a href="#">History</a></li>
                            <c:choose>
                            <c:when test="${user ne null}">
                                <li><a class="login register" href="#">Logout</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a class="login sign-in" href="${BASE_URL}login">Sign In</a></li>
                                </c:otherwise>
                                </c:choose>


                            <li>
                                <div class="header-icons">
                                    <a class="shopping-cart btn-MyAccount" href="#"><i class="fas fa-user-circle"></i></a>
                                    <a class="shopping-cart" href="${BASE_URL}cart"><i class="fas fa-shopping-cart"></i></a>
                                    <a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                    <div class="mobile-menu"></div>
                    <!-- menu end -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end header -->

<!-- search area -->
<div class="search-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <span class="close-btn"><i class="fas fa-window-close"></i></span>
                <div class="search-bar">
                    <div class="search-bar-tablecell">
                        <h3>Search For:</h3>
                        <input type="text" placeholder="Keywords">
                        <button type="submit">Search <i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end search area -->
