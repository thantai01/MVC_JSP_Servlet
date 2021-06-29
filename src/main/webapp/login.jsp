<%--
  Created by IntelliJ IDEA.
  User: 84936
  Date: 6/29/2021
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome To Site</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <div class="row">
        <img src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ee060752-7590-4368-a936-6e7ae0428150/d6jm38a-e7af4757-901b-43e0-8bcf-62fca6bb330e.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2VlMDYwNzUyLTc1OTAtNDM2OC1hOTM2LTZlN2FlMDQyODE1MFwvZDZqbTM4YS1lN2FmNDc1Ny05MDFiLTQzZTAtOGJjZi02MmZjYTZiYjMzMGUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.73aAIXETo-tZ7HuTTL_wMhfstfULDpfEDorM1vOMAwA">
    </div>
    <div class="row">
       <div class="col-2"></div>
       <div class="col-8">
           <form action="${pageContext.request.contextPath}/login" method="post">
               <!-- Email input -->
               <div class="form-outline mb-4">
                   <input type="email" id="form1Example1" class="form-control" name="emailName" />
                   <label class="form-label" for="form1Example1">Email address</label>
               </div>

               <!-- Password input -->
               <div class="form-outline mb-4">
                   <input type="password" id="form1Example2" class="form-control" name="password" />
                   <label class="form-label" for="form1Example2">Password</label>
               </div>

               <!-- 2 column grid layout for inline styling -->
               <div class="row mb-4">
                   <div class="col d-flex justify-content-center">
                       <!-- Checkbox -->
                       <div class="form-check">
                           <input
                                   class="form-check-input"
                                   type="checkbox"
                                   value=""
                                   id="form1Example3"
                                   checked
                           />
                           <label class="form-check-label" for="form1Example3"> Remember me </label>
                       </div>
                   </div>

                   <div class="col">
                       <!-- Simple link -->
                       <a href="https://www.google.com">Forgot password?</a>
                   </div>
               </div>

               <!-- Submit button -->
               <button type="submit" class="btn btn-primary btn-block" style="width: 100px">Sign in</button>
           </form>
       </div>
       <div class="col-2"></div>
   </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
