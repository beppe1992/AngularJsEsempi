<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>AngularFileUpload</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="AngularFileUploadController" style="margin-left: 1cm">
	<jsp:include page="header.jsp" />

	<br>
	<br>
	<br>
	<br>

	<form name="form">

		<div class="button" ngf-select ng-model="fileImage" name="fileImage"
			ngf-pattern="'image/*'" ngf-accept="'image/*'" ngf-max-size="1MB">
			SELECT
		</div>

		<h6>Di seguito sono riportati eventuali errori di validazione sul
			file caricato: {{form.fileImage.$error}}</h6>




		<div class="button" ngf-select ng-model="fileImageMultiple"
			name="fileImageMultiple" ngf-pattern="'image/*'"
			ngf-accept="'image/*'" ngf-max-size="1MB" ngf-multiple="true">
			SELECT
		</div>

		<h6>Di seguito sono riportati eventuali errori di validazione sui
			file caricato: {{form.fileImageMultiple.$error}}</h6>

		<div ngf-select ngf-drop ng-model="fileImageMultipleDrop"
			name="fileImageMultipleDrop" ngf-pattern="'image/*'"
			ngf-accept="'image/*'" ngf-max-size="1MB" ngf-multiple="true" class="drop-box" >
			DRAG AND DROP
		</div>

		<h6>Di seguito sono riportati eventuali errori di validazione sui
			file caricato: {{form.fileImageMultipleDrop.$error}}</h6>


	</form>

	<br>
	<br>



</body>
</html>