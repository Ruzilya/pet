<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
</head>
<body>

<!-- logout-->
<c:url value="/j_spring_security_logout" var="logoutUrl" />

<!-- csrt for log out-->
<form action="${logoutUrl}" method="post" id="logoutForm">
  <input type="hidden"
         name="${_csrf.parameterName}"
         value="${_csrf.token}" />
</form>

<script>
  function formSubmit() {
    document.getElementById("logoutForm").submit();
  }
</script>

<c:choose>
  <c:when test="${pageContext.request.userPrincipal.name == null}">
    <a href="registration">Зарегистрироваться</a> или <a href="login">Войти</a>, чтобы другие участники тоже видели Ваши результаты.
  </c:when>
  <c:otherwise>
    ${pageContext.request.userPrincipal.name} | <a
          href="javascript:formSubmit()"> Выйти</a>
  </c:otherwise>
</c:choose>
</body>
</html>
