<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <link rel="stylesheet" href='<c:url value="/resources/style/bootstrap.min.css" />' />
    <style type="text/css">
        .white {
            color: #fff;
        }
    </style>
</head>
<body>
<button onclick="location.href='index'" class="btn btn-lg btn-primary btn-block">
    <div class="white">Вернуться к игре</div>
</button>
</body>
</html>
