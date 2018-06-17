<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Suity Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <!--webfont-->
    <link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script>$(document).ready(function (c) {
        $('.alert-close').on('click', function (c) {
            $('.message').fadeOut('slow', function (c) {
                $('.message').remove();
            });
        });
    });
    </script>
    <script>$(document).ready(function (c) {
        $('.alert-close1').on('click', function (c) {
            $('.message1').fadeOut('slow', function (c) {
                $('.message1').remove();
            });
        });
    });
    </script>
    <script>$(document).ready(function (c) {
        $('.alert-close2').on('click', function (c) {
            $('.message2').fadeOut('slow', function (c) {
                $('.message2').remove();
            });
        });
    });
    </script>
</head>

<body>

<div class="content_top">
    <div class="container">
        <%--注册界面--%>
        <div class="col-md-9 content_right">
            <div class="dreamcrub">
                <ul class="breadcrumbs">
                    <li class="women">
                        登录
                    </li>
                </ul>
                <ul class="previous">
                    <li><a href="index.html">返回上一页</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="register">
                <div class="col-md-6 login-right">
                    <h3>注册用户</h3>
                    <p>如果你已有账户，请登录.</p>
                    <form action="${pageContext.request.contextPath }/client/RegisterServlet" method="post">
                        <div>
                            <span>用户名<label>*</label></span>
                            <input type="text" name="username">
                        </div>
                        <div>
                            <span>密码<label>*</label></span>
                            <input type="text" name="password">
                        </div>
                        <div>
                            <span>电话</span>
                            <input type="text" name="phone">
                        </div>
                        <div>
                            <span>手机</span>
                            <input type="text" name="cellphone">
                        </div>
                        <div>
                            <span>邮箱</span>
                            <input type="text" name="email">
                        </div>
                        <div>
                            <span>住址</span>
                            <input type="text" name="address">
                        </div>
                        <input type="submit" value="注册">
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

</body>

</html>
