<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Angucomplete</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="AngularBootstrapSwitchController"
	style="margin-left: 1cm">
	<jsp:include page="header.jsp" />

	<br>
	<br>
	<br>
	<br>

	<h3>Flag selezionato: {{flagSelezionato}}</h3>
	<div style="height: 0.5cm">
		<input bs-switch ng-model="flagSelezionato" type="checkbox"
			switch-animate="true"
			switch-on-text="SI" switch-off-text="NO" ng-true-value="'SI'" ng-false-value="'NO'"
			data-size="mini" />
	</div>
	<br>
	<br>



</body>
</html>