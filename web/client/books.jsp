<%@ page language="java" pageEncoding="UTF-8" %>

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
                <div class="grid1 box7">
                    <h3>${book.name }</h3>
                        ${book.author}&nbsp;著
                    <div class="view view-first">
                        <img src="${pageContext.request.contextPath }/images/${book.image}"
                             class="img-responsive" alt="" width="200px" height="30px"/>
                        <a href="${pageContext.request.contextPath }/client/BuyServlet?bookid=${book.id}">
                            <div class="mask">
                                <h5>&nbsp;</h5>
                                <h4>加入购物车</h4>
                                <h5>&nbsp;</h5>
                            </div>
                        </a>
                    </div>
                    <p>
                        ${book.description}
                    </p>
                    <br>
                    <h5>售价：<span class="actual">¥ ${book.price }</span></h5>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="clearfix"></div>
</div>