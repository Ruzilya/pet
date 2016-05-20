<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;  charset=utf-8" %>
<html>
<head>
  <title>Login Page</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
  <link rel="stylesheet" href='<c:url value="/resources/style/bootstrap.min.css" />' />
  <style>
    .error {
      padding: 15px;
      margin-bottom: 20px;
      border: 1px solid transparent;
      border-radius: 4px;
      color: #a94442;
      background-color: #f2dede;
      border-color: #ebccd1;
    }

    .msg {
      padding: 15px;
      margin-bottom: 20px;
      border: 1px solid transparent;
      border-radius: 4px;
      color: #31708f;
      background-color: #d9edf7;
      border-color: #bce8f1;
    }

    .custom-container {
      width: 500px;
      margin: 0 auto;
    }
  </style>
</head>
<body onload='document.loginForm.username.focus();'>

<div class="custom-container">
  <h1>Spring Security Custom Login Form (XML)</h1>

  <h2>Login with Username and Password</h2>

  <c:if test="${not empty error}">
    <div class="error">${error}</div>
  </c:if>
  <c:if test="${not empty msg}">
    <div class="msg">${msg}</div>
  </c:if>

  <form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST' class="form-signin">
    <label for="username">User:</label>
    <input type="text" class="form-control" name="username" id="username"/>

    <label for="password">Password:</label>
    <input type="password" class="form-control" name="password" id="password"/>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
  </form>
</div>



</body>
</html>