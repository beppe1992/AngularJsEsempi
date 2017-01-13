<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>UI Bootstrap</title>
</head>

<body ng-app="extensionLibraries"
	ng-controller="UIBootstrapExampleController">
	<jsp:include page="header.jsp" />

	<!-- COLLAPSIBLE PANEL - ESEMPIO SEMPLICE-->
	<h3>COLLAPSIBLE PANEL</h3>

	<label>Si vuole permettere l'apertura di piu' pannelli
		contemporaneamente?? <input type="checkbox" ng-model="unoAllaVolta" />
	</label>


	<uib-accordion close-others="!unoAllaVolta">

	<div uib-accordion-group class="panel-default" heading="Header statico">
		DESCRIZIONE BASE</div>


	<div uib-accordion-group class="panel-default"
		heading="{{elemento.titolo}}" ng-repeat="elemento in listaElementi">
		{{elemento.contenuto}}</div>


	<div uib-accordion-group class="panel-danger" heading="Elimina Account">
		<p>Clicca sul pulsante se vuoi eliminare il tuo account</p>
		<button class="btn btn-danger">Delete</button>
	</div>
	</uib-accordion>


	<h3>Datepicker Popup</h3>

	<pre>Selected date is: <em>{{dt | date:'fullDate' }}</em>
	</pre>


	<div class="row">
		<div class="col-md-6">
			<p class="input-group">
				<input type="text" class="form-control"
					uib-datepicker-popup="dd/MM/yyyy" ng-model="dt"
					is-open="popup.opened" datepicker-options="dateOptions"
					ng-required="true" close-text="Close"/> <span
					class="input-group-btn">
					<button type="button" class="btn btn-default" ng-click="open()">
						<i class="glyphicon glyphicon-calendar"></i>
					</button>
				</span>
			</p>
		</div>
	</div>
	
	<h3>Altri esempi possono essere visualizzati <a href="https://angular-ui.github.io/bootstrap/#/accordion">qui</a></h3>
	
</body>
</html>