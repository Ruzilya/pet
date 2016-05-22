<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;  charset=utf-8" %>
<html>
<head>
  <title>Авторизация</title>

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
      margin: 20px auto;
      color: #776e65;
      font-family: "Clear Sans", "Helvetica Neue", Arial, sans-serif;
      font-size: 18px;
    }
  </style>
</head>
<body onload='document.loginForm.username.focus();'>

<div class="custom-container">
  <div class="btn btn-lg btn-primary btn-block">
    <jsp:include page="templates/menu.jsp"/>
  </div>
  <h1>Авторизация</h1>

  <h2>Введите свой логин и пароль</h2>

  <c:if test="${not empty error}">
    <div class="error">${error}</div>
  </c:if>
  <c:if test="${not empty msg}">
    <div class="msg">${msg}</div>
  </c:if>

  <form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST' class="form-signin">
    <label for="username">Логин:</label>
    <input type="text" class="form-control" name="username" id="username"/>

    <label for="password">Пароль:</label>
    <input type="password" class="form-control" name="password" id="password"/>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button>
    <label style="font-size: 12px; margin-top: 10px;">Если у вас ещё нет аккаунта - <a href="registration">зарегистрируйтесь</a>.</label>
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
  </form>
</div>
</body>
</html>