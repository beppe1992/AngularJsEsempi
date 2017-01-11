
<html>
<head>
<title>Popup di esempio</title>
</head>

<body>

	<h1>{{messaggioBenvenuto}} sono un popup custom!!!!!!</h1>

	<input ng-model="nome" placeholder="Inserire il nome"></input>

	<br>
	<br>

	<button type="submit" value="Conferma" ng-click="conferma()">Conferma</button>

	<button type="submit" value="Annulla" ng-click="annulla()">Annulla</button>

</body>
</html>