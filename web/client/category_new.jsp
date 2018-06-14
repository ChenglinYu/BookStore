<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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