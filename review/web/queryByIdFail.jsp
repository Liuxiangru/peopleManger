<%--
  Created by IntelliJ IDEA.
  User: 90860
  Date: 2017/2/8 0008
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <title>Title</title>
    <script type="text/javascript">
        function loginsuccess() {
            window.location.href = "loginsuccess.jsp";
        }
        window.setTimeout("loginsuccess()", 5000);
    </script>
</head>
<body>
<div class="container">
    <div class="col-md-6 col-md-offset-4">
        <div class="jumbotron">
            <h1>无该ID的People</h1>
            <P>没有查询到该该ID的People,5秒后将自动跳转,如果没有跳转请点击跳转按钮</P>
            <p><a class="btn btn-primary btn-lg" href="loginsuccess.jsp" role="button">跳转</a></p>
        </div>
    </div>
</div>
</body>
</html>
