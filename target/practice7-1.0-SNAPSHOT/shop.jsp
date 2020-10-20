<%--
  Created by IntelliJ IDEA.
  User: Amiran
  Date: 18-Oct-20
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chamb - Responsive E-commerce HTML5 Template</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--enable mobile device-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--fontawesome css-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!--bootstrap css-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!--animate css-->
    <link rel="stylesheet" href="css/animate-wow.css">
    <!--main css-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="css/slick.min.css">
    <!--responsive css-->
    <link rel="stylesheet" href="css/responsive.css">
    <script>
        function selectItem(item) {
            item = $(item).children('h4').text()
            $.ajax({
                url: 'shopUpdate',
                type: "POST",
                data: {
                    item: item
                }, accepts: "application/json; charset=utf-8",
                success: function (data) {
                    $("#list").empty();
                    if (data.msg == "error") {
                        $('#list').append("<li>Error</li>");
                    } else {
                        var res = data;
                        for (let i = 0; i < data.length; i++) {
                            $("#list").append(
                                "<li>" + res[i] + "</li>"
                            );
                        }
                    }
                }
            });
        }
    </script>
</head>
<body>

<!-- Modal -->
<div class="modal fade lug" id="myModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Change</h4>
            </div>
            <div class="modal-body">
                <ul>
                    <li><a href="#"><img src="images/flag-up-1.png" alt="" /> United States</a></li>
                    <li><a href="#"><img src="images/flag-up-2.png" alt="" /> France </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="sidebar" class="top-nav">
    <ul id="sidebar-nav" class="sidebar-nav">
        <li><a href="#">Help</a></li>
        <li><a href="howitworks.html">How it works</a></li>
        <li><a href="#">chamb for Business</a></li>
    </ul>
</div>
<div class="page-content-product">
    <div class="main-product">
        <div class="container">

            <div class="row clearfix">
                <div class="col-lg-3 col-sm-6 col-md-3" onclick="selectItem('#item-witcher')">
                    <a>
                        <div class="box-img" id="item-witcher">
                            <h4>Witcher 3 GOTY Edition PS4</h4>
                            <img src="https://sonycenter.kz/image/cache_v/catalog/kostas/games/witcher-3-wild-hunt-600x600.png" alt="" />
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-sm-6 col-md-3" onclick="selectItem('#item-iphone12')">
                    <a>
                        <div class="box-img" id="item-iphone12">
                            <h4>IPhone 12</h4>
                            <img src="https://s1.stc.all.kpcdn.net/putevoditel/projectid_346574/images/tild3138-3164-4632-b964-343662643031__12-4.jpg" alt="" />
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-link-box clearfix">
    <div class="col-md-6 col-sm-6">
<div class="left-f-box">
    <h3>Your cart</h3>
    <form action="buy.jsp"><input type="submit" value="Buy!"></form>
    <div class="col-sm-12" id="list">

    </div>
</div>
    </div>
</div>
<footer>
    <div class="main-footer">
        <div class="container">
            <div class="row">
                <div class="footer-top clearfix">
                    <div class="col-md-2 col-sm-6">
                        <h2>Start a free
                            account today
                        </h2>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="form-box">
                            <input type="text" placeholder="Enter yopur e-mail" />
                            <button>Continue</button>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12">
                        <div class="help-box-f">
                            <h4>Question? Call us on 12 34 56 78 for help</h4>
                            <p>Easy setup - no payment fees - up to 100 products for free</p>
                        </div>
                    </div>
                </div>
                <div class="footer-link-box clearfix">
                    <div class="col-md-6 col-sm-6">
                        <div class="left-f-box">
                            <div class="col-sm-4">
                                <h2>SELL ON chamb</h2>
                                <ul>
                                    <li><a href="#">Create account</a></li>
                                    <li><a href="howitworks.html">How it works suppliers</a></li>
                                    <li><a href="pricing.html">Pricing</a></li>
                                    <li><a href="#">FAQ for Suppliers</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <h2>BUY ON chamb</h2>
                                <ul>
                                    <li><a href="#">Create account</a></li>
                                    <li><a href="#">How it works buyers</a></li>
                                    <li><a href="#">Categories</a></li>
                                    <li><a href="#">FAQ for buyers</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <h2>COMPANY</h2>
                                <ul>
                                    <li><a href="about-us.html">About chamb</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Press</a></li>
                                    <li><a href="#">Careers</a></li>
                                    <li><a href="#">Terms of use</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="right-f-box">
                            <h2>INDUSTRIES</h2>
                            <ul class="col-sm-4">
                                <li><a href="#">Textiles</a></li>
                                <li><a href="#">Furniture</a></li>
                                <li><a href="#">Leather</a></li>
                                <li><a href="#">Agriculture</a></li>
                                <li><a href="#">Food & drinks</a></li>
                            </ul>
                            <ul class="col-sm-4">
                                <li><a href="#">Office</a></li>
                                <li><a href="#">Decoratives</a></li>
                                <li><a href="#">Electronics</a></li>
                                <li><a href="#">Machines</a></li>
                                <li><a href="#">Building</a></li>
                            </ul>
                            <ul class="col-sm-4">
                                <li><a href="#">Cosmetics</a></li>
                                <li><a href="#">Health</a></li>
                                <li><a href="#">Jewelry</a></li>
                                <li><a href="#">See all here</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <p><img width="90" src="images/logo.png" alt="#" style="margin-top: -5px;" /> All Rights Reserved. Company Name © 2018</p>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline socials">
                        <li>
                            <a href="">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-linkedin" aria-hidden="true"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="right-flag">
                        <li><a href="#"><img src="images/flag.png" alt="" /> <span>Change</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--main js-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!--bootstrap js-->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/wow.min.js"></script>
<!--custom js-->
<script src="js/custom.js"></script>
</body>
</html>