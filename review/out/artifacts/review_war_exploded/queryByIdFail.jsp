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
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a  class="navbar-brand" href="/index.jsp">PeoPle管理</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">综述</a></li>
                <li><a href="#">简述</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">特点<span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" >
                        <li><a href="#chrome" data-tab="chrome">Chrome</a></li>
                        <li><a href="#firefox" data-tab="firefox">Firefox</a></li>
                        <li><a href="#opera" data-tab="opera">Opera</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#safari" data-tab="safari">Safari</a></li>
                    </ul>
                </li>
                <li><a href="#" data-toggle="modal" data-target="#about">关于</a></li>
                <li>
                    <form class="navbar-form navbar-left" role="search" method="post" action="controller/LoginAction">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Account" name="account">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="password">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                        <button type="button" class="btn btn-default" onclick="register()">Register</button>
                    </form>

                </li>
            </ul>
        </div>
    </div>
</nav>

        <div class="jumbotron">
            <div class="container">
                <div class="col-md-9 col-md-offset-2">
            <h1 align="center">无该ID的People</h1>
            <P align="center">没有查询到该该ID的People,5秒后将自动跳转,如果没有跳转请点击跳转按钮</P>
            <p align="center"><a class="btn btn-primary btn-lg" href="loginsuccess.jsp" role="button">跳转</a></p>
        </div>
    </div>
</div>
</body>
</html>
