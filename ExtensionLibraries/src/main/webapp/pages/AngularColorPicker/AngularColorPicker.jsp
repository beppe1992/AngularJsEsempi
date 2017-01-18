<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Angular Color Picker</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="AngularColorPickerController" style="margin-left: 1cm">
	<jsp:include page="header.jsp" />

	<br>
	<br>
	<br>
	<br>
	<label>Seleziona un colore:</label>
	<input colorpicker="rgb" colorpicker-with-input="true" type="text"
		ng-model="coloreSelezionato" />

	<div ng-style="{'background-color' : coloreSelezionato , 'height': '3cm'} "></div>



	<br>
	<br>



</body>
</html>