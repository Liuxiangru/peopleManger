<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>浏览器博物馆</title>
    <!-- Bootstrap -->
    <%--<link href="css/bootstrap.min.css" rel="stylesheet">--%>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <%--<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>--%>
    <%--<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>--%>

    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

    <script type="text/javascript">
        function register(){
            window.location.href="register.jsp";
        }
    </script>
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 70px;

        }
        .form-horizontal{
            padding-top: 50px;
        }
        .carousel{
            height: 500px;
            background-color: #0f0f0f;
            margin-bottom: 60px;
        }
        .carousel .item{
            height: 500px;
            background-color: #0f0f0f;
        }
        .carousel img{
            width: 100%;
        }
        .carousel-caption{
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 1.8;
        }
        #su-container .col-md-9{
            text-align: center;
        }
        hr.divider{
            margin: 40px 0;

        }
        .feature{

            padding: 30px 0;
        }
        .feature-heading{
            font-size: 50px;
            color: #122b40;
            margin-top: 110px;
        }
        .feature-heading .text-muted{
            font-size: 25px;
            color: #9acfea;
        }

    </style>
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
            <a  class="navbar-brand" href="#">浏览器博物馆</a>
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
<div class="container-fluid" id="su-container">
    <div class="row ">
        <div class="col-md-5 col-md-offset-3">
        <form action="controller/Register" class="form-horizontal" method="post">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Account</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="account" id="inputEmail3" placeholder="Account">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="password" id="inputPassword3" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Remember me
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </div>
        </form>
        </div>
    </div>
</div>

</body>
</html>