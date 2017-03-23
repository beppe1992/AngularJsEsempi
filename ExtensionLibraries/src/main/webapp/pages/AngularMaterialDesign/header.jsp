<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<spring:url value="/webjars/" var="webjarsPath" />

<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR -->
<script src="${webjarsPath}angularjs/1.5.8/angular.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-resource.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-animate.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-touch.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-aria.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-messages.min.js"></script>


<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR MATERIAL DESIGN -->
<link rel="stylesheet"
	href="${webjarsPath}angular-material/1.1.3/angular-material.min.css">
<script
	src="${webjarsPath}angular-material/1.1.3/angular-material.min.js"></script>
	

<!-- INCLUDO I SERVIZI E I CONTROLLER JAVASCRIPT -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/AngularMaterialDesign/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/AngularMaterialDesign/AngularMaterialDesignController.js"></script>

<script type="text/javascript">
	EXTENSION_LIBRARIES = angular.extend(typeof MFA === 'undefined' ? {} : MFA,
			{
				contextPath : '<spring:url value="/" />'
			});
</script>




