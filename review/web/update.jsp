<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="review.dao.PeopleDaoImpl" %>
<%@ page import="review.entity.People" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>登录成功页面</title>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <style>
        #p1 {
            margin-top: 14px;
            margin-left: 5px;
        }

        #update {
            margin: 70px;
        }
    </style>
    <script type="text/javascript">
        function register() {
            window.location.href = "index.jsp";
        }

        function update() {
            window.location.href = "update.jsp";
        }
    </script>
    <%--<% String account = (String)request.getSession().getAttribute("account"); %>--%>
    <%
        PeopleDaoImpl pdi = new PeopleDaoImpl();
        int pid = Integer.parseInt(request.getParameter("pid"));
        People p = pdi.queryPeopleByPid(pid);

    %>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">浏览器博物馆</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">综述</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">特点<span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
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
                        <button type="button" class="btn btn-default" onclick="index()">安全退出</button>
                    </form>
                </li>
                <li>
                    <p id="p1">
                        <font color="#7fff00"> 欢迎<font color="red"><%=request.getSession().getAttribute("account")%>
                        </font>用户登陆成功</font>
                    </p>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 ">
            <div class="form-group " id="update">
                <form action="controller/updateServlet" method="post">
                <div class="input-group">
                    <span class="input-group-btn">
        <button class="btn btn-default" type="button">PID:</button>
      </span>
                    <input type="text" class="form-control" placeholder="<%=p.getPid()%>"  name="pid" value="<%=p.getPid()%>" readonly="readonly">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">名字:</button>
      </span>
                    <input type="text" class="form-control" placeholder="<%=p.getName()%>"  name="name" value="<%=p.getName()%>">
                </div>
                <div class="input-group">
                    <span class="input-group-btn">
        <button class="btn btn-default" type="button">性别:</button>
      </span>
                    <input type="text" class="form-control" placeholder="<%=p.getSex()%>" name="sex" value="<%=p.getSex()%>">
                </div>
                <div class="input-group">
                    <span class="input-group-btn">
        <button class="btn btn-default" type="button">年龄:</button>
      </span>
                    <input type="text" class="form-control" placeholder="<%=p.getAge()%>" name="age" value="<%=p.getAge()%>">
                </div>
                <div align="center">
                    <button class="btn btn-mini btn-info" type="submit">修改</button>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
