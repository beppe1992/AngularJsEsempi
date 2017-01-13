<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Angucomplete</title>
</head>

<body ng-app="extensionLibraries" ng-controller="AngucompleteController" style="margin-left: 1cm">
	<jsp:include page="header.jsp" />

	<br>
	<br>
	<br>
	<br>
	
	<h3>Citta' Selezionata: {{selectedCitta}}</h3>

	<!-- LOCAL USAGE -->
	<angucomplete-alt id="ex1" placeholder="Citta'" pause="100"
		selected-object="selectedCitta" local-data="citta" search-fields="name"
		title-field="name" minlength="1"
		input-class="form-control form-control-small" />
                        
     <br>
     <br>         
      
	

</body>
</html>