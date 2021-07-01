<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %><%--
  Created by IntelliJ IDEA.
  User: 84936
  Date: 6/30/2021
  Time: 8:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Converted</title>
</head>
<body>
<h2>
    <%
    String loginTime = ((LocalDateTime)request.getAttribute("loginTime")).format(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss"));
    String[] userContent = request.getParameter("emailName").split("@");
    %>
</h2>

 <h4> Welcome: <%=userContent[0]%> </h4>
 <h4> Login Time: <%=loginTime%> </h4>
 <hr>

<div><a href="index.jsp">INDEX.JSP </a>
</div>
</body>
</html>
