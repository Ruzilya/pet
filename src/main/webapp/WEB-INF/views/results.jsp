<%@ page import="ru.kpfu.itis.pet.g2048.Constants" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<%@ page contentType="text/html;  charset=utf-8" %>
<html>
<head>
    <title>Таблица рекордов</title>
    <link id="cssLink" href="<c:url value="<%=Constants.THEME_CSS_PATH %>" />" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <link rel="stylesheet" href='<c:url value="/resources/style/bootstrap.min.css" />'/>

    <style type="text/css">
        .custom-container {
            margin: 20px auto;
            width: 500px;
            color: #776e65;
            font-family: "Clear Sans", "Helvetica Neue", Arial, sans-serif;
            font-size: 18px;
        }

        a {
            color: #776e65;
            font-weight: bold;
            text-decoration: underline;
            cursor: pointer;
        }

        p {
            margin-top: 0;
            margin-bottom: 10px;
            line-height: 1.65;
        }

        .right { text-align: right; }
    </style>
</head>
<body>

<div class="custom-container">
    <div class="btn btn-lg btn-primary btn-block" type="submit">
        <%--<a href="index">Вернуться к игре</a>--%>
        <jsp:include page="templates/menu.jsp"/>
    </div>
    <div>
        <jsp:include page="templates/login_logout.jsp"/>
    </div>
    <h2>Таблица рекордов</h2>
    <c:if test="${!empty listUsers}">
        <table class="table">
            <thead>
            <tr>
                <th>Логин</th>
                <th class="right">Рекорд</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listUsers}" var="u">
                <tr>
                    <td>${u.username}</td>
                    <td class="right">${u.score}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>
</body>
</html>
