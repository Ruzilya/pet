<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>Login Page</title>
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

    #login-box {
      width: 300px;
      padding: 20px;
      margin: 100px auto;
      background: #fff;
      -webkit-border-radius: 2px;
      -moz-border-radius: 2px;
      border: 1px solid #000;
    }
  </style>
</head>
<body onload='document.loginForm.username.focus();'>

<div class="container">
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

    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
  </form>
</div>

</body>
</html>