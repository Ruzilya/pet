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
            margin: 0 auto;
            width: 500px;
            /*margin: 80px 0;*/
            /*padding: 0;*/
            /*background: #ffffff;*/
            color: #776e65;
            font-family: "Clear Sans", "Helvetica Neue", Arial, sans-serif;
            font-size: 18px;
        }

        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            /*font-family: Arial, sans-serif;*/
            /*font-size: 14px;*/
            font-family: "Clear Sans", "Helvetica Neue", Arial, sans-serif;
            font-size: 18px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            /*font-family: Arial, sans-serif;*/
            /*font-size: 14px;*/
            font-family: "Clear Sans", "Helvetica Neue", Arial, sans-serif;
            font-size: 18px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>

<div class="custom-container">
    <%--<div class="container">--%>
        <div>
            <jsp:include page="templates/login_logout.jsp"/>
        </div>
        <div>
            <jsp:include page="templates/menu.jsp"/>
        </div>
        <h3>Таблица рекордов</h3>
        <c:if test="${!empty listUsers}">
            <table class="tg">
                <tr>
                    <th width="120">Логин</th>
                    <th width="120">Рекорд</th>
                </tr>
                <c:forEach items="${listUsers}" var="u">
                    <tr>
                        <td>${u.username}</td>
                        <td>${u.score}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    <%--</div>--%>
</div>
</body>
</html>
