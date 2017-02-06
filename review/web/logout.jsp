<%--
  Created by IntelliJ IDEA.
  User: 90860
  Date: 2017/2/6 0006
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        request.getSession().removeAttribute("account");
        response.sendRedirect(request.getContextPath()+"index.jsp");
    %>
</head>
<body>
</body>
</html>
