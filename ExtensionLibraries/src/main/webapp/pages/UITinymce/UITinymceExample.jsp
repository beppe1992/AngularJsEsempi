<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>UI Tinymce</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="UITinymceExampleController">
	<jsp:include page="header.jsp" />

	<ng-form name="form">
		<div >
			<label style="color: rgba(0, 0, 0, 0.38);">Descrizione</label> <br>
			<br>
			<textarea ng-maxlength="100" required ui-tinymce="tinymceOptions" name="descrizione"
				ng-model="descrizione" style="resize: none;"></textarea>
			<span ng-if="form.descrizione.$error.maxlength" >Il campo contiene un numero eccessivo di caratteri (testo + html)</span>
			<span ng-if="form.descrizione.$error.required  && form.descrizione.$touched" >Il campo e' obbligatorio</span>
		</div>
		
		<br>
		<br>
		<button ng-disabled="form.$invalid" ng-click="convertiHtml()">Converti</button>
		
	
	
	
		<div ng-bind-html="descrizioneHtml"></div>
	
	</ng-form>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	Per maggiori informazioni vedere <a href="https://www.tinymce.com/docs/configure/">questa</a> pagina
	
</body>
</html>