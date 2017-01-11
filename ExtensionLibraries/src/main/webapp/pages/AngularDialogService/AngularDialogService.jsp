<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>AngularDialogService</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="AngularDialogServiceController">
	<jsp:include page="header.jsp" />

	<button type="submit" value="Error Modal" ng-click="openError()">
		Error Modal</button>

	<button type="submit" value="Notifica Modal" ng-click="openNotifica()">
		Notifica Modal</button>

	<button type="submit" value="Conferma Modal" ng-click="openConferma()">
		Conferma Modal</button>

	<button type="submit" value="Wait Modal" ng-click="openWait()">
		Wait Modal</button>

	<button type="submit" value="Custom Modal" ng-click="openCustomPopup()">
		Custom Modal</button>

</body>
</html>