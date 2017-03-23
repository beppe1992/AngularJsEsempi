<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Angular Material</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body ng-app="extensionLibraries"
	ng-controller="AngularMaterialDesignController">
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<div flex-gt-xs>
		<h4>Standard date-picker</h4>
		<md-datepicker ng-model="selectedDate" md-placeholder="Seleziona data"></md-datepicker>

		<br> <br> {{selectedDate}}
	</div>
	<br>
	<br>
	<div flex-gt-xs>
		<h4>Tool Bar</h4>
		<md-fab-toolbar md-open="isOpen" count="count"
			md-direction="{{selectedDirection}}"> 
				<md-fab-trigger class="align-with-text"> 
					<md-button aria-label="menu" class="md-fab md-primary"> 
						<i class="material-icons">menu</i> 
					</md-button> 
				</md-fab-trigger> 
			<md-toolbar> 
				<md-fab-actions class="md-toolbar-tools"> 
					<md-button aria-label="comment" class="md-icon-button"> 
						<i class="material-icons">time_to_leave</i> 
					</md-button> 
					<md-button aria-label="label" class="md-icon-button"> 
						<i	class="material-icons">sms</i> 
					</md-button> 
					<md-button aria-label="photo" class="md-icon-button"> 
						<i class="material-icons">voice_chat</i>
					</md-button> 
				</md-fab-actions> 
			</md-toolbar>
		</md-fab-toolbar>
	</div>

	<br>
	<br>
	<div flex-gt-xs>
		<h4>Generics Input</h4>
		
		<md-input-container> <label>Title</label> <input
			ng-model="user.title"> </md-input-container>

		<md-input-container> <label>Email</label> <input
			ng-model="user.email" type="email"> </md-input-container>
			
			
		<md-input-container flex-gt-sm>
            <label>CAP</label>
            <input name="postalCode" ng-model="postalCode" placeholder="12345"
                   required ng-pattern="/^[0-9]{5}$/" md-maxlength="5">

            <div ng-messages="userForm.postalCode.$error" role="alert" multiple>
              <div ng-message="required" class="my-message">Il CAP e' obbligatorio</div>
              <div ng-message="pattern" class="my-message">Non e' un CAP corretto
              </div>
              <div ng-message="md-maxlength" class="my-message">
                Non e' un CAP corretto
              </div>
            </div>
          </md-input-container>
          
          
          
	</div>

	<div flex-gt-xs>
		<h4>Switch</h4>
		<md-switch ng-model="selected" aria-label="Switch 1">
		Switch 1: {{ selected }} </md-switch>
	</div>


	<h3>
		Altri esempi possono essere visualizzati <a
			href="https://material.angularjs.org/latest/getting-started">qui</a>
	</h3>

</body>
</html>