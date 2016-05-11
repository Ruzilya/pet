<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<%@ page contentType="text/html;  charset=utf-8" %>
<html>
<head>
  <title>Results</title>
  <style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
    .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
    .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
    .tg .tg-4eph{background-color:#f9f9f9}
  </style>
</head>
<body>

<div class="container">
  <jsp:include page="templates/login_logout.jsp" />
    <h3>Results</h3>
    <c:if test="${!empty listUsers}">
      <table class="tg">
        <tr>
          <th width="120">UserName</th>
          <th width="120">The best result</th>
        </tr>
        <c:forEach items="${listUsers}" var="user">
          <tr>
            <td>${user.name}</td>
            <td>${user.score}</td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
  </div>
</body>
</html>
