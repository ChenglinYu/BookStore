<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Suity Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- Custom Theme files -->
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!-- Custom Theme files -->
	<!--webfont-->
	<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script>$(document).ready(function(c) {
        $('.alert-close').on('click', function(c){
            $('.message').fadeOut('slow', function(c){
                $('.message').remove();
            });
        });
    });
	</script>
	<script>$(document).ready(function(c) {
        $('.alert-close1').on('click', function(c){
            $('.message1').fadeOut('slow', function(c){
                $('.message1').remove();
            });
        });
    });
	</script>
	<script>$(document).ready(function(c) {
        $('.alert-close2').on('click', function(c){
            $('.message2').fadeOut('slow', function(c){
                $('.message2').remove();
            });
        });
    });
	</script>
</head>

<body>

<%--TODO:登陆与注册--%>
<div class="index-banner">
	<div class="container">
		<div class="header_top">
			<div class="logo">
				<a href="index.html"><img src="images/logo.png" alt=""/></a>
			</div>
			<div class="header-bottom-right">
				<ul class="icon1 sub-icon1 profile_img">
					<li><a class="active-icon c1" href="#">购物车 </a><div class="rate">3</div>
						<ul class="sub-icon1 list">
							<h3>最近添加</h3>
							<div class="shopping_cart">
								<div class="cart_box">
									<div class="message">
										<div class="alert-close"> </div>
										<div class="list_img"><img src="images/1.jpg" class="img-responsive" alt=""/></div>
										<div class="list_desc"><h4><a href="#">书名</a></h4>数量 x<span class="actual">
		                             价格</span></div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="cart_box">
									<div class="message1">
										<div class="alert-close1"> </div>
										<div class="list_img"><img src="images/2.jpg" class="img-responsive" alt=""/></div>
										<div class="list_desc"><h4><a href="#">书名</a></h4>数量 x<span class="actual">
		                             价格</span></div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="cart_box1">
									<div class="message2">
										<div class="alert-close2"> </div>
										<div class="list_img"><img src="images/3.jpg" class="img-responsive" alt=""/></div>
										<div class="list_desc"><h4><a href="#">书名</a></h4>数量 x<span class="actual">
		                             价格</span></div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<div class="total">
								<div class="total_left">共计 : </div>
								<div class="total_right">总价</div>
								<div class="clearfix"> </div>
							</div>
							<div class="login_buttons">
								<div class="check_button"><a href="checkout.html">查看购物车</a></div>
								<div class="login_button"><a href="login.html">登录</a></div>
								<div class="clearfix"></div>
							</div>
							<div class="clearfix"></div>
						</ul>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="menu">
				<a href="#" class="right_bt" id="activator"><img src="images/menu.png" alt=""/></a>
				<div class="box" id="box">
					<div class="box_content_center">
						<div class="menu_box_list">
							<ul>
								<li><a href="index.html">首页</a></li>
								<li class="active"><a href="sales.html">条目1</a></li>
								<li><a href="sales.html">条目2</a></li>
								<li><a href="about.html">关于我们</a></li>
								<li><a href="contact.html">联系我们</a></li>
							</ul>
						</div>
						<a class="boxclose" id="boxclose"><img src="images/close.png" alt=""/></a>
					</div>
				</div>
				<script type="text/javascript">
                    var $ = jQuery.noConflict();
                    $(function() {
                        $('#activator').click(function(){
                            $('#box').animate({'left':'0px'},500);
                        });
                        $('#boxclose').click(function(){
                            $('#box').animate({'left':'-2300px'},500);
                        });
                    });
                    $(document).ready(function(){

                        //Hide (Collapse) the toggle containers on load
                        $(".toggle_container").hide();

                        //Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
                        $(".trigger").click(function(){
                            $(this).toggleClass("active").next().slideToggle("slow");
                            return false; //Prevent the browser jump to the link anchor
                        });

                    });
				</script>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="wmuSlider example1">
		<article style="position: absolute; width: 100%; opacity: 0;">
			<div class="banner-wrap">
				<img style="100%" src="images/banner1.jpg"/>
			</div>
		</article>
		<article style="position: absolute; width: 100%; opacity: 0;">
			<div class="banner-wrap">
				<h1>Lorem Ipsum.</h1>
			</div>
		</article>
		<article style="position: absolute; width: 100%; opacity: 0;">
			<div class="banner-wrap">
				<h1>Adpising adit.</h1>
			</div>
		</article>
	</div>
	<script src="js/jquery.wmuSlider.js"></script>
	<script>
        $('.example1').wmuSlider();
	</script>
</div>

<div class="content_top">
	<div class="container">
		<!--左侧的菜单栏（分类列表）-->
		<div class="col-md-3">
			<ul class="menu1">
				<li class="item1"><a href="#" class="">分类列表<img class="arrow-img" src="images/arrow.png" alt=""/> </a>
					<ul class="cute" style="display: none; overflow: hidden;">
						<c:forEach var="category" items="${categories }">
							<li class="subitem1">
								<a href="${pageContext.request.contextPath }/client/IndexServlet?method=listBookWithCategory&category_id=${category.id}">${category.name }</a>
							</li>
						</c:forEach>
					</ul>
				</li>
			</ul>
			<!--initiate accordion-->
			<script type="text/javascript">
                $(function() {
                    var menu1_ul = $('.menu1> li > ul'),
                        menu1_a  = $('.menu1 > li > a');
                    menu1_ul.hide();
                    menu1_a.click(function(e) {
                        e.preventDefault();
                        if(!$(this).hasClass('active')) {
                            menu1_a.removeClass('active');
                            menu1_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true,true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true,true).slideUp('normal');
                        }
                    });

                });
			</script>
		</div>

		<%--商品--%>
		<div class="col-md-9 content_right">
			<div class="client_box">
				<ul class="clients">
					<li><img src="images/c1.png" class="img-responsive" alt=""/></li>
					<li><img src="images/c2.png" class="img-responsive" alt=""/></li>
					<li><img src="images/c3.png" class="img-responsive" alt=""/></li>
					<li><img src="images/c4.png" class="img-responsive" alt=""/></li>
				</ul>
			</div>
			<div class="content_right-box">
				<div class="col-md-8">
					<div class="grid1">
						<h5>书名</h5>
						<div class="view view-first">
							<img src="images/pic1.jpg" class="img-responsive" alt=""/>
							<a href="single.html"><div class="mask">
								<h3>查看详情</h3>
								<p>---------</p>
								<h4>加入购物车</h4>
							</div></a>
						</div>
						<h6>价格</h6>
						<h6>作者</h6>
					</div>
					<div class="grid1 box4">
						<h5>书名加购物车</h5>
						<div class="view view-first">
							<img src="images/pic2.jpg" class="img-responsive" alt=""/>
							<a href="single.html"><div class="mask mask1">
								<h3>查看详情</h3>
								<p>---------</p>
								<h4>加入购物车</h4>
							</div></a>
						</div>
						<h6>价格</h6>
					</div>
				</div>
				<div class="col-md-4">
					<a href="single.html">
						<div class="grid2">
							<div class="view view-first">
								<img src="images/pic3.jpg" class="img-responsive" alt=""/>
								<h5>书名加作者</h5>
								<h6>价格</h6>
							</div>
						</div>
					</a>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>

<div class="footer">
	<div class="container">
		<img src="images/f_logo.png" alt=""/>
		<div class="copy">
			<p>Copyright &copy;.<a target="_blank" href=""></a></p>
		</div>
	</div>
</div>

</body>

</html>
