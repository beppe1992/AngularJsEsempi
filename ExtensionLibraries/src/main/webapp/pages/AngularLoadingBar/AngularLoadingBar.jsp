<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>AngularLoadingBar</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="AngularLoadingBarController" style="margin-left: 1cm">
	<jsp:include page="header.jsp" />

	<div id="loading-bar-container"></div>

	<br>
	<br>
	<br>
	<br>

	<button ng-click="chiamaServizio()">Cerca Con Servizio</button>

	<table>
		<tr ng-repeat="post in posts">
			<td>{{post.name}}</td>
		</tr>
	</table>

	<br>
	<br>



</body>
</html>