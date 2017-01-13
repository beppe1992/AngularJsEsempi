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
<script src="${webjarsPath}angularjs/1.5.8/angular-touch.min.js"></script>


<!-- INCLUDO LE LIBRERIE BASE DI BOOTSTRAP -->
<link rel="stylesheet"
	href="${webjarsPath}bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="${webjarsPath}angular-ui-bootstrap/2.2.0/ui-bootstrap.min.js"></script>
<script
	src="${webjarsPath}angular-ui-bootstrap/2.2.0/ui-bootstrap-tpls.min.js"></script>


<!-- INCLUDO I SERVIZI E I CONTROLLER JAVASCRIPT -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/UIBootstrap/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/UIBootstrap/UIBootstrapExampleController.js"></script>

<script type="text/javascript">
	EXTENSION_LIBRARIES = angular.extend(typeof MFA === 'undefined' ? {} : MFA,
			{
				contextPath : '<spring:url value="/" />'
			});
</script>




