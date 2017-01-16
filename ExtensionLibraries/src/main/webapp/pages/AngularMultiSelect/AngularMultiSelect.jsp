<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Angucomplete</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="AngularMultiSelectController" style="margin-left: 1cm">
	<jsp:include page="header.jsp" />

	<br>
	<br>
	<br>
	<br>

	<h3>Citta' Selezionata: {{selectedCitta}}</h3>

	
		
		<div isteven-multi-select input-model="citta"
		output-model="selectedCitta" button-label="name"
		item-label="name" tick-property="selected">
</div>
                        
     
	<br>
     <br>         
      
	

</body>
</html>