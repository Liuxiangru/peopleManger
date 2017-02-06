<%--
  Created by IntelliJ IDEA.
  User: 90860
  Date: 2017/1/23
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="review.dao.PeopleDaoImpl" contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="review.service.PeopleDao" %>
<%@ page import="review.dao.PeopleDaoImpl" %>
<%@ page import="review.entity.People" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>登录成功页面</title>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <style>
        #dlsuccess {
            color: #4cae4c;
        }

        #dlsuccess-2 {
            color: chartreuse;
        }

        #table {
            margin-top: 20px;
        }

        #p1 {
            margin-top: 14px;
            margin-left: 5px;
        }

        #div-top {
            margin-top: 60px;
        }
    </style>
    <script type="text/javascript">
        function index() {
            window.location.href="logout.jsp";
        }


        function register() {
            window.location.href = "register.jsp";
        }

        function update(pid) {
            window.location.href = "update.jsp?pid=" + pid;
        }

        function add() {
            window.location.href = "add.jsp";
        }
        function deleteById(pid) {
            if (confirm("确定删除这个人么")) {
                window.location.href = "deleteServlet?pid=" + pid;
            }

        }
        $(".pagination").pagy({
            totalPages: 20,
            currentPage: 1
        });
    </script>
    <%
        PeopleDao pdi = new PeopleDaoImpl();
        ArrayList<People> peopleList = pdi.queryAllPeople();
        System.out.println("peopleList.size()" + peopleList.size());

    %>
    <%--<% String account = (String)request.getSession().getAttribute("account"); %>--%>
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
        <div class="col-md-6 col-md-offset-3" id="div-top">
            <form action="controller/queryByidServlet" method="post">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="请输入您要查询的id" name="pid">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit" >查询</button>
                    <button type="button" class="btn btn-success" onclick="add()">添加</button>
                </span>
            </div>
            </form>

            <hr>
            <%--table-hover table-striped table-bordered--%>
            <table class="table " id="table">
                <tr>
                    <th>#Id</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>数据操作</th>
                </tr>
                <%

                    for (int i = 0; i < peopleList.size(); i++) {
                        People people = peopleList.get(i);
                %>
                <div>
                    <tr>
                        <td><%= people.getPid()%>
                        </td>
                        <td><%= people.getName()%>
                        </td>
                        <td><%= people.getSex()%>
                        </td>
                        <td><%= people.getAge()%>
                        </td>
                        <form action="controller/deleteServlet" method="post">
                            <td>
                                <button class="btn btn-mini btn-info" type="button"
                                        onclick="update(<%= people.getPid()%>)">
                                    修改
                                </button>
                                <button class="btn btn-mini btn-danger" type="submit" value="<%= people.getPid()%>"
                                        name="pid">删除
                                </button>
                            </td>
                        </form>
                    </tr>
                </div>
                <%
                    }
                %>
            </table>
            <div align="center">
            <nav aria-label="Page navigation" >
                <ul class="pagination">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            </div>
        </div>
    </div>
</div>
</body>
</html>
