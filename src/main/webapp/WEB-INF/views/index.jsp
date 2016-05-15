<%@ page import="ru.kpfu.itis.pet.g2048.Constants" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<%@ page contentType="text/html;  charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>2048</title>

  <link id="cssLink" href="<c:url value="<%=Constants.THEME_CSS_PATH %>" />" rel="stylesheet">
  <link rel="shortcut icon" href="favicon.ico">
  <link rel="apple-touch-icon" href="meta/apple-touch-icon.png">
  <link rel="apple-touch-startup-image" href="meta/apple-touch-startup-image-640x1096.png" media="(device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2)"> <!-- iPhone 5+ -->
  <link rel="apple-touch-startup-image" href="meta/apple-touch-startup-image-640x920.png"  media="(device-width: 320px) and (device-height: 480px) and (-webkit-device-pixel-ratio: 2)"> <!-- iPhone, retina -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">

  <meta name="HandheldFriendly" content="True">
  <meta name="MobileOptimized" content="320">
  <meta name="viewport" content="width=device-width, target-densitydpi=160dpi, initial-scale=1.0, maximum-scale=1, user-scalable=no, minimal-ui">
</head>
<body>

<script type="text/javascript">
  function changeTheme(checkbox_id) {
      if(document.getElementById(checkbox_id).checked) {
        $("#cssLink").attr("href", '<c:url value="<%=Constants.DEFAULT_CSS_PATH %>"/>');
      } else {
        $("#cssLink").attr("href", '<c:url value="<%=Constants.THEME_CSS_PATH %>"/>');
      }
    }
</script>

  <div class="container">
    <div><jsp:include page="templates/login_logout.jsp" /></div>
    <div><jsp:include page="templates/menu.jsp" /></div>
    <div class="heading">
      <h1 class="title">2048</h1>
      <div class="scores-container">
        <div class="score-container">0</div>
        <div class="best-container">0
          <%--<c:choose>--%>
          <%--<c:when test="${-pageContext.request.user == null}">--%>
            <%--0--%>
          <%--</c:when>--%>
          <%--<c:otherwise>--%>
            <%--${-pageContext.request.user.score}--%>
          <%--</c:otherwise>--%>
          <%--</c:choose>--%>
        </div>
      </div>
    </div>

    <div class="above-game">
      <p class="game-intro">Cоединяй числа и доберись до Победы!</p>
      <a class="restart-button">Новая игра</a>
    </div>

    <div>
      <input type = checkbox id = "cb1" onchange='changeTheme("cb1")'/>Использовать стандартную тему
    </div>

    <div class="game-container">
      <div class="game-message">
        <p></p>
        <div class="lower">
	        <a class="keep-playing-button">Продолжить</a>
          <a class="retry-button">Попытаться снова</a>
        </div>
      </div>

      <div class="grid-container">
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
      </div>

      <div class="tile-container">

      </div>
    </div>

    <p class="game-explanation">
      <strong class="important">Правила игры:</strong> Для управления используйте <strong>стрелики</strong> на клавиатуре. При соединении двух одинаковых цифр они <strong>суммируются.</strong>
    </p>
    <hr>
    <p>
    АВТОРЫ: <a href="https://vk.com/sruzilya">Рузиля Саубанова</a> и <a href="https://vk.com/forsazh">Руслан Фахрутдинов</a>.
      <br>Based on <i>http://git.io/2048</i> by <i>Gabriele Cirulli.</i>
    </p>
  </div>

  <script src="<c:url value="/resources/js/bind_polyfill.js" />"></script>
  <script src="<c:url value="/resources/js/classlist_polyfill.js" />"></script>
  <script src="<c:url value="/resources/js/animframe_polyfill.js" />"></script>
  <script src="<c:url value="/resources/js/keyboard_input_manager.js" />"></script>
  <script src="<c:url value="/resources/js/html_actuator.js" />"></script>
  <script src="<c:url value="/resources/js/grid.js" />"></script>
  <script src="<c:url value="/resources/js/tile.js" />"></script>
  <script src="<c:url value="/resources/js/local_storage_manager.js" />"></script>
  <script src="<c:url value="/resources/js/game_manager.js" />"></script>
  <script src="<c:url value="/resources/js/application.js" />"></script>

  <script src="<c:url value="/resources/js/jquery-2.2.3.js" />"></script>

</body>
</html>
