<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;  charset=utf-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Create an account</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
  <link rel="stylesheet" href='<c:url value="/resources/style/bootstrap.min.css" />' />

  <style>
    .custom-container {
      width: 500px;
      margin: 20px auto;
      color: #776e65;
      font-family: "Clear Sans", "Helvetica Neue", Arial, sans-serif;
      font-size: 18px;
    }

    #white {
      color: #fff !important;
    }
  </style>

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <%--<script>--%>
    <%--function passCheck() {--%>
      <%--var pass1 = document.getElementById("pass1").value;--%>
      <%--var pass2 = document.getElementById("pass2").value;--%>
      <%--var ok = true;--%>
      <%--if (pass1 != pass2) {--%>
        <%--alert("Passwords Do not match");--%>
        <%--ok = false;--%>
      <%--}--%>
      <%--return ok;--%>
    <%--}--%>
  <%--</script>--%>
</head>

<body>

<div class="custom-container">

  <div class="btn btn-lg btn-primary btn-block" id="white">
    <jsp:include page="templates/menu.jsp"/>
  </div>

  <%--<form:form method="POST" modelAttribute="userForm" class="form-signin" onsubmit="return passCheck()">--%>
    <form:form method="POST" modelAttribute="userForm" class="form-signin">
    <h1>Регистрация</h1>
    <h2 class="form-signin-heading">Создать аккаунт</h2>
    <spring:bind path="username">
      <div class="form-group ${status.error ? 'has-error' : ''}">
        <label for="username">Логин:</label>
        <form:input type="text" path="username" class="form-control" autofocus="true"></form:input>
        <form:errors path="username"></form:errors>
      </div>
    </spring:bind>

    <spring:bind path="password">
      <div class="form-group ${status.error ? 'has-error' : ''}">
        <label for="username">Пароль:</label>
        <form:input type="password" id="pass1" path="password" class="form-control"></form:input>
        <form:errors path="password"></form:errors>
      </div>
    </spring:bind>

    <spring:bind path="passwordConfirm">
      <div class="form-group ${status.error ? 'has-error' : ''}">
        <label for="username">Повторите пароль:</label>
        <form:input type="password" id="pass2" path="passwordConfirm" class="form-control"></form:input>
        <form:errors path="passwordConfirm"></form:errors>
      </div>
    </spring:bind>

    <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрироваться</button>
  </form:form>
  <label style="font-size: 12px; margin-top: 10px;">Если у вас уже есть аккаунт - <a href="login">авторизуйтесь</a>.</label>

</div>
<!-- /container -->
</body>
</html>