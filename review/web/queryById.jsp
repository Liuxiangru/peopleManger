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
<table class="table ">
    <tr>
        <td rowspan="6" align="center">ID为<%=p.getPid()%>的People</td>
    </tr>
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
    </form>
</table>
</body>
</html>
