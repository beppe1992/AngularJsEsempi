<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<spring:url value="/webjars/" var="webjarsPath" />

<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR -->
<script src="${webjarsPath}angularjs/1.5.8/angular.min.js"></script>
<script
	src="${webjarsPath}angularjs/1.5.8/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-resource.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-animate.min.js"></script>


<!-- INCLUDO LE LIBRERIE BASE DI BOOTSTRAP -->
<link rel="stylesheet"
	href="${webjarsPath}bootstrap/2.3.2/css/bootstrap.min.css">
<script
	src="${webjarsPath}angular-bootstrap/1.3.3/ui-bootstrap.min.js"></script>
<script
	src="${webjarsPath}angular-bootstrap/1.3.3/ui-bootstrap-tpls.min.js"></script>
<script
	src="${webjarsPath}angular-sanitize/1.6.1/angular-sanitize.min.js"></script>
<script
	src="${webjarsPath}angular-translate/2.13.1/angular-translate.min.js"></script>




<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR DIALOG SERVICE -->
<script
	src="${webjarsPath}angular-dialog-service/5.3.0/dist/dialogs-default-translations.min.js"></script>
<script
	src="${webjarsPath}angular-dialog-service/5.3.0/dist/dialogs.min.js"></script>
<link rel="stylesheet"
	href="${webjarsPath}angular-dialog-service/5.3.0/dist/dialogs.min.css">


<!-- INCLUDO I SERVIZI E I CONTROLLER JAVASCRIPT -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/AngularDialogService/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/AngularDialogService/AngularDialogServiceController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/AngularDialogService/CustomPopupController.js"></script>

<script type="text/javascript">
	EXTENSION_LIBRARIES = angular.extend(typeof MFA === 'undefined' ? {} : MFA,
			{
				contextPath : '<spring:url value="/" />'
			});
</script>




