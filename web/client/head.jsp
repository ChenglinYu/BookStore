<%@ page language="java" pageEncoding="UTF-8" %>

<div class="index-banner">
    <div class="container">
        <div class="header_top">
            <div class="logo">
                <a href="../index.jsp"><img src="images/logo.png" alt=""/></a>
            </div>

            <%--菜单栏--%>
            <div class="header-bottom-right">
                <div class="menu">
                    <a href="#" class="right_bt" id="activator"><img src="images/menu.png" alt=""/></a>
                    <div class="box" id="box">
                        <div class="box_content_center">
                            <div class="menu_box_list">
                                <c:if test="${user==null }">
                                    <ul>
                                        <li><a href="login.jsp">登录</a></li>
                                        <li><a href="register.jsp">注册</a></li>
                                    </ul>
                                </c:if>
                                <c:if test="${user!=null }">
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath }/client/LoginOutServlet">注销</a>
                                        </li>
                                    </ul>
                                </c:if>
                            </div>
                            <a class="boxclose" id="boxclose"><img src="images/close.png" alt=""/></a>
                        </div>
                    </div>
                    <script type="text/javascript">
                        var $ = jQuery.noConflict();
                        $(function () {
                            $('#activator').click(function () {
                                $('#box').animate({'left': '0px'}, 500);
                            });
                            $('#boxclose').click(function () {
                                $('#box').animate({'left': '-2300px'}, 500);
                            });
                        });
                        $(document).ready(function () {

                            //Hide (Collapse) the toggle containers on load
                            $(".toggle_container").hide();

                            //Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
                            $(".trigger").click(function () {
                                $(this).toggleClass("active").next().slideToggle("slow");
                                return false; //Prevent the browser jump to the link anchor
                            });

                        });
                    </script>
                </div>
            </div>

            <%--用户登录--%>
            <c:if test="${user!=null }">
                <div class="header-bottom-right">
                    <ul class="icon1 sub-icon1 profile_img">
                        <li><a class="active-icon c1">欢迎您：${user.username }</a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
            </c:if>

            <%--购物车--%>
            <div class="header-bottom-right">
                <ul class="icon1 sub-icon1 profile_img">

                    <li><a class="active-icon c1" href="#">购物车 </a>
                        <c:if test="${cart.map != null}">
                            <div class="rate">${cart.map.size()}</div>
                        </c:if>
                        <ul class="sub-icon1 list">
                            <h3>最近添加</h3>
                            <div class="shopping_cart">
                                <c:forEach var="me" items="${cart.map }">
                                    <div class="cart_box">
                                        <div class="message">
                                            <div class="list_img"><img src="${pageContext.request.contextPath }/images/${me.value.book.image}"
                                                                       class="img-responsive" alt=""/></div>
                                            <div class="list_desc">
                                                <h4><a href="#">${me.value.book.name }</a></h4>
                                                <h6>
                                                    数量：<span class="actual">${me.value.quantity}</span>
                                                <br>
                                                    单价：<span class="actual">¥ ${me.value.price / me.value.quantity}</span>
                                                </h6>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="total">
                                <div class="total_left">共计 :</div>
                                <div class="total_right">¥ ${cart.price }</div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="login_buttons">
                                <div class="check_button"><a
                                        href="${pageContext.request.contextPath }/client/ListCartServlet">查看购物车</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                        </ul>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>

            <%--查看订单--%>
            <div class="header-bottom-right">
                <ul class="icon1 sub-icon1 profile_img">
                    <li><a class="active-icon c1"
                           href="${pageContext.request.contextPath }/client/ClientListOrderServlet?userid=${user.id}">您的订单 </a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
    <div class="wmuSlider example1">
        <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
                <br>
                <img src="images/xbanner4.jpg"/>
                <br><br><br>
                <img src="images/xbanner0.png" width="85%"/>
            </div>
        </article>
        <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
                <br>
                <img src="images/xbanner7.png" width="90%"/>
            </div>
        </article>
        <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
                <br><br><br>
                <img src="images/xbanner8.png" width="90%"/>
            </div>
        </article>

    </div>
    <script src="js/jquery.wmuSlider.js"></script>
    <script>
        $('.example1').wmuSlider();
    </script>
</div>

