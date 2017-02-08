<%@ page import="review.entity.People" %><%--
  Created by IntelliJ IDEA.
  User: 90860
  Date: 2017/2/3
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style type="text/css">
        #con{
            margin-top: 50px;
        }

    </style>
    <script type="text/javascript">
            function update(pid) {
                window.location.href = "update.jsp?pid=" + pid;
            }
    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css">
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <%
        People p = (People) request.getSession().getAttribute("p");
    %>

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
<div class="container" id="con">
    <div class="col-md-9 col-md-offset-2">
<table class="table ">
    <tr>
        <td colspan="5" align="center">ID为<%=p.getPid()%>的People</td>
    </tr>

    <tr>
    <td><%=p.getPid()%>
    </td>
    <td><%=p.getName()%>
    </td>
    <td><%= p.getSex()%>
    </td>
    <td><%=p.getAge()%>
    </td>
    <form action="controller/deleteServlet" method="post">
    <td>
        <button class="btn btn-mini btn-info" type="button"
                onclick="update(<%= p.getPid()%>)">
            修改
        </button>
        <button class="btn btn-mini btn-danger" type="submit" value="<%=p.getPid()%>"
                name="pid">删除
        </button>
    </td>
    </tr>
    </form>
</table>
</div>
</div>
</body>
</html>
