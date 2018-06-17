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

<%@include file="head.jsp" %>

<div class="content_top">
    <div class="container">
        <!--左侧的菜单栏（分类列表）-->
        <%@include file="category.jsp" %>

        <%--订单列表--%>
        <div class="col-md-9 content_right">
            <div class="dreamcrub">
                <ul class="breadcrumbs">
                    <li class="women">
                        您的订单
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>

            <div class="shopping_cart">
                <c:forEach var="order" items="${orders }">
                    <div class="cart_box">
                        <div class="message">
                            <div class="alert-close"></div>
                            <div class="list_desc">
                                <h4><a href="#">订单号：${order.id }</a></h4>
                                订单时间：${order.ordertime}
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="total">
                            <div class="total_left">共计 :</div>
                            <div class="total_right">¥ ${order.price}</div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="login_buttons">
                            <div class="login_button">
                                <a href="${pageContext.request.contextPath }/client/ClientOrderDetailServlet?orderid=${order.id}">查看明细</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="clearfix"></div>
            <div class="clearfix"></div>

        </div>
    </div>
</div>

<%@include file="footer.jsp" %>

</body>

</html>
