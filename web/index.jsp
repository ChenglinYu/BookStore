<%@ page language="java" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>BookStore</title>
</head>

<%--<frameset rows="17%,*">--%>
<%--<frame src="${pageContext.request.contextPath }/client/head.jsp" name="head">--%>
<%--<frame src="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" name="body">--%>
<%--</frameset>--%>

<frameset rows="100%,*">
    <frame src="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" name="body">
</frameset>

</html>
