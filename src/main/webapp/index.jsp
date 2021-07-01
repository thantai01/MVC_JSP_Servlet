<%--
  Created by IntelliJ IDEA.
  User: 84936
  Date: 6/29/2021
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Character" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html>
  <head>
    <title>GUD CHOP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
        .row table {
          font-weight: bold;
          font-style: normal;
          color: red;
          background-color: bisque;
        }
        .row table tr {
          font-weight: bold;
          text-align: center;
          border-color: black;
        }
        .row table tr th {
          color: blue;
        }
    </style>
  </head>
  <body>
  <div class="container-fluid">
  <%--    ROW 1--%>
    <div class="row">
      <h3>
        <%
          String loginTime = ((LocalDateTime)request.getAttribute("loginTime")).format(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss"));
          String[] userContent = request.getParameter("emailName").split("@");
        %>
        Welcome: <%=userContent[0]%><br>
        Login Time: <%=loginTime%>
      </h3><hr>
    </div>

    <div class="row">
      <div class="col-2" style="">
        <div class="row" style="text-align:  center">
          <a href="#" class="btn btn-primary btn-lg " tabindex="-1" role="button">Add </a>
        </div> <br>
        <div class="row" style="text-align:  center">
          <a href="#" class="btn btn-primary btn-lg " tabindex="-1" role="button">Edit</a>
        </div> <br>
        <div class="row" style="text-align:  center">
          <a href="#" class="btn btn-primary btn-lg " tabindex="-1" role="button">Delete</a>
        </div>
      </div>
      <div class="col-8">
        <table class="table table-bordered" width="100%" >
          <tr>
            <th>ID</th>
            <th>Character Name</th>
            <th>Character Age</th>
            <th>Character Address</th>
            <th>Character Picture</th>
          </tr>
          <%--@elvariable id="characters" type="java.util.List"--%>
          <c:forEach items="${characters}" var="characters">
            <tr>
              <td>${characters.id}</td>
              <td>${characters.name}</td>
              <td>${characters.age}</td>
              <td>${characters.addressCity}</td>
              <td><img src="${characters.imgPath}" width="150" height="150" alt="..."></td>
            </tr>
          </c:forEach>
        </table>
      </div>
      <div class="col-2"></div>
    </div>
  </div>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
