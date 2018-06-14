<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
			<c:forEach var="book" items="${page.list }">
				<div class="grid1">
					<h5>${book.name }</h5>
					<div class="view view-first">
							<%--TODO：显示书籍图片--%>
							<%--<img src="${pageContext.request.contextPath }/images/${book.image}" class="img-responsive" alt=""/>--%>
						<img src="images/pic1.jpg" class="img-responsive" alt=""/>
						<a href="${pageContext.request.contextPath }/client/BuyServlet?bookid=${book.id}">
							<div class="mask">
								<h3>查看详情</h3>
								<p>---------</p>
								<h4>加入购物车</h4>
							</div>
						</a>
					</div>
					<h6>作者：${book.author }</h6>
					<h6>售价：${book.price }</h6>

				</div>
			</c:forEach>
		</div>
	</div>
	<div class="clearfix"> </div>
</div>