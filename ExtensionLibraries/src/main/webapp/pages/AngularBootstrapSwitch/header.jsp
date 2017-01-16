<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<spring:url value="/webjars/" var="webjarsPath" />

<script src="${webjarsPath}jquery/3.1.1/dist/jquery.min.js"></script>

<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR -->
<script src="${webjarsPath}angularjs/1.5.8/angular.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-resource.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-route.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-animate.min.js"></script>
<script src="${webjarsPath}angularjs/1.5.8/angular-touch.min.js"></script>

<!-- INCLUDO LE LIBRERIE BASE DI BOOTSTRAP -->
<link
	href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR BOOTSTRAP SWITCH -->
<script
	src="${webjarsPath}angular-bootstrap-switch/0.4.1/angular-bootstrap-switch.min.js"></script>
<script
	src="${webjarsPath}bootstrap-switch/3.2.2/js/bootstrap-switch.min.js"></script>
<link
	href="${pageContext.request.contextPath}/webjars/bootstrap-switch/3.2.2/css/bootstrap3/bootstrap-switch.css"
	rel="stylesheet">









<!-- INCLUDO I SERVIZI E I CONTROLLER JAVASCRIPT -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/AngularBootstrapSwitch/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/AngularBootstrapSwitch/AngularBootstrapSwitchController.js"></script>

<!-- INCLUDO AGUCOMPLETER -->


<script type="text/javascript">
	EXTENSION_LIBRARIES = angular.extend(typeof MFA === 'undefined' ? {} : MFA,
			{
				contextPath : '<spring:url value="/" />'
			});
</script>




