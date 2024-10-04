<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 24/09/2024
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Company spring MVC</title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <title>Page de connexion</title>
  <link rel="stylesheet" type="text/css"  href="<c:url value="/resources/public/css/style.css" />" />
</head>

<body>
<div class="background">
  <div class="shape"></div>
  <div class="shape"></div>
</div>
<form method="post" action="login">
  <h3>Login</h3>
  <label for="username">Username</label>
  <input type="text" name="username" placeholder="Username" id="username">
  <label for="password">Password</label>
  <input type="password" name="password" placeholder="Password" id="password">
  <button type="submit">Log In</button>
  <div class="social">
    <div class="go"><i class="fab fa-google"></i>  Google</div>
    <div class="fb"><i class="fab fa-facebook"></i>  Facebook</div>
  </div>
</form>
</body>
</html>