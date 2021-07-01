<%--
  Created by IntelliJ IDEA.
  User: 84936
  Date: 7/1/2021
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Create new Character</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
  <form>

    <h2 style="font-weight: bold">FILL ALL FIELD BELOW TO CREATE NEW CHARACTER</h2>
    <br><br>
    <div class="mb-3">
      <label for="characterID" class="form-label">Character ID</label>
      <input type="text" class="form-control" id="characterID" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
      <label for="characterName" class="form-label">Character Name</label>
      <input type="text" class="form-control" id="characterName">
    </div>
    <div class="mb-3">
      <label for="characterAge" class="form-label">Character Age</label>
      <input type="text" class="form-control" id="characterAge">
    </div>
    <div class="mb-3">
      <label for="characterAddress" class="form-label">Character Age</label>
      <input type="text" class="form-control" id="characterAddress">
    </div>
    <div class="mb-3">
      <label for="characterImgLink" class="form-label">Character Age</label>
      <input type="text" class="form-control" id="characterImgLink">
    </div>
    <button type="submit" class="btn btn-primary">Create </button><br>
    <p>
      <a href="${pageContext.request.contextPath}/main">Back to Main List</a>
    </p>
  </form>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
