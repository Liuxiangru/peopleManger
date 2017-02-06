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
        function register() {
            window.location.href = "register.jsp";
        }
    </script>
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 70px;

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
        #su-container .col-md-4{
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
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="/images/chrome-big.jpg" alt="1 slide">
            <div class="carousel-caption">
                <h1>Chrome</h1>
                <p>Google浏览器，Google Chrome，中国大陆官方译名：酷容浏览器（原网上叫做谷歌浏览器</p>
                <p><a class="btn btn-lg btn-primary" href="http://171.8.167.73/softdl.360tpcdn.com/Chrome/Chromestable_55.0.2883.87.exe" target="_blank" role="button">点击下载</a></p>
            </div>
        </div>
        <div class="item">
            <img src="/images/firefox-big.jpg" alt="2 slide">
            <div class="carousel-caption">
                <h1>Firefox</h1>
                <p>Mozilla Firefox，中文俗称"火狐"(正式缩写为Fx或fx，非正式缩写为FF)，是一个自由及开放源代码网页浏览器</p>
                <p><a class="btn btn-lg btn-primary" href="http://www.firefox.com.cn/download" target="_blank" role="button">点击下载</a></p>
            </div>
        </div>
        <div class="item">
            <img src="/images/opera-big.jpg" alt="3 slide">
            <div class="carousel-caption">
                <h1>Opera</h1>
                <p>Opera浏览器，是一款挪威Opera Software ASA公司制作的支持多页面标签式浏览的网络浏览器</p>
                <p><a class="btn btn-lg btn-primary" href="http://www.opera.com/zh-cn" target="_blank" role="button">点击下载</a></p>
            </div>
        </div>
        <div class="item">
            <img src="/images/ie-big.jpg" alt="4 slide">
            <div class="carousel-caption">
                <h1>Safari</h1>
                <p>Safari,苹果计算机的最新操作系统Mac OS X中新的浏览器</p>
                <p><a class="btn btn-lg btn-primary" href="https://itunes.apple.com/cn/app/macos-sierra/id1127487414?mt=12" target="_blank" role="button">点击下载</a></p>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">上一页</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">下一页</span>
    </a>
</div>

<div class="container" id="su-container">
    <div class="row">
        <div class="col-md-4">
            <img class="img-circle" src="images/chrome-logo-small.jpg" alt="chrome">
            <h2>Chrome</h2>
            <p>Google浏览器，Google Chrome，中国大陆官方译名：酷容浏览器（原网上叫做谷歌浏览器</p>
            <p><a class="btn btn-default" href="http://171.8.167.73/softdl.360tpcdn.com/Chrome/Chromestable_55.0.2883.87.exe" role="button">下载Chrome</a></p>
        </div>
        <div class="col-md-4">
            <img class="img-circle" src="images/firefox-logo-small.jpg" alt="firefox">
            <h2>Firefox</h2>
            <p>Mozilla Firefox，中文俗称"火狐"(正式缩写为Fx或fx，非正式缩写为FF)，是一个自由及开放源代码网页浏览器</p>
            <p><a class="btn btn-default" href="http://171.8.167.73/softdl.360tpcdn.com/Chrome/Chromestable_55.0.2883.87.exe" role="button">下载Chrome</a></p>
        </div>
        <div class="col-md-4">
            <img class="img-circle" src="images/safari-logo-small.jpg" alt="Opera">
            <h2>Opera</h2>
            <p>Opera浏览器，是一款挪威Opera Software ASA公司制作的支持多页面标签式浏览的网络浏览器</p>
            <p><a class="btn btn-default" href="http://171.8.167.73/softdl.360tpcdn.com/Chrome/Chromestable_55.0.2883.87.exe" role="button">下载Chrome</a></p>
        </div>
    </div>
    <hr class="divider" >
    <ul class="nav nav-pills" id="feature-tab" >
        <li role="presentation" class="active"><a href="#chrome" role="tab"  data-toggle="tab">Chrome</a></li>
        <li role="presentation" ><a href="#firefox"   data-toggle="tab">Firefox</a></li>
        <li role="presentation" ><a href="#opera"  data-toggle="tab">Opera</a></li>
        <li role="presentation" ><a href="#safari"  data-toggle="tab">Safari</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="chrome">
            <div class="row feature">
                <div class="col-md-7">

                    <h2 class="feature-heading">Google Chrome <span
                            class="text-muted">使用最广的浏览器</span></h2>

                    <p class="lead">Google Chrome，又称Google浏览器，是一个由Google（谷歌）公司开发的网页浏览器。
                        该浏览器是基于其他开源软件所撰写，包括WebKit，目标是提升稳定性、速度和安全性，并创造出简单且有效率的使用者界面。</p>
                </div>
                <div class="col-md-5">
                    <img class="feature-image img-responsive" src="images/chrome-logo.jpg"
                         alt="Chrome">
                </div>
            </div>
        </div>
        <div class="tab-pane" id="firefox">
            <div class="row feature">

                <div class="col-md-5">
                    <img class="feature-image img-responsive" src="images/firefox-logo.jpg"
                         alt="Firefox">
                </div>

                <div class="col-md-7">
                    <h2 class="feature-heading">Mozilla Firefox <span class="text-muted">美丽的狐狸</span>
                    </h2>
                    <p class="lead">Mozilla Firefox，中文名通常称为“火狐”或“火狐浏览器”，是一个开源网页浏览器，
                        使用Gecko引擎（非ie内核），支持多种操作系统如Windows、Mac和linux。</p>
                </div>
            </div>
        </div>

        <div class="tab-pane" id="safari">
            <div class="row feature">
                <div class="col-md-7">

                    <h2 class="feature-heading">Safari <span class="text-muted">Mac用户首选</span></h2>

                    <p class="lead">Safari，是苹果计算机的最新操作系统Mac OS X中的浏览器，使用了KDE的KHTML作为浏览器的运算核心。
                        Safari在2003年1月7日首度发行测试版，并成为Mac OS X v10.3与之后的默认浏览器，也是iPhone与IPAD和iPod touch的指定浏览器。</p>
                </div>
                <div class="col-md-5">
                    <img class="feature-image img-responsive" src="images/safari-logo.jpg"
                         alt="Safari">
                </div>
            </div>
        </div>
        <div class="tab-pane" id="opera">
            <div class="row feature">
                <div class="col-md-5">
                    <img class="feature-image img-responsive" src="images/opera-logo.jpg"
                         alt="Opera">
                </div>
                <div class="col-md-7">

                    <h2 class="feature-heading">Opera <span class="text-muted">小众但易用</span>
                    </h2>

                    <p class="lead">Opera浏览器，是一款挪威Opera Software ASA公司制作的支持多页面标签式浏览的网络浏览器。
                        是跨平台浏览器可以在Windows、Mac和Linux三个操作系统平台上运行。.</p>
                </div>
            </div>
        </div>

    </div>
    <hr class="divider">
    <footer>
        <p class="pull-right"><a href="#top">回到顶部</a></p>
        <p>2017 LLLLLLR</p>
    </footer>
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="about">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">关于</h4>
            </div>
            <div class="modal-body">
                <p>全球最大的中文搜索引擎、致力于让网民更便捷地获取信息,找到所求</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
    $(document).ready(function () {
       $("#bs-example-navbar-collapse-1 .dropdown-menu a").click(function () {
           var href = $(this).attr("href");
           $("#feature-tab a[href='"+href +"']").tab("show");
       });
    });
</script>

</body>
</html>