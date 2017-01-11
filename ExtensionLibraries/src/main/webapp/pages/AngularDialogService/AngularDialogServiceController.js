angular.module('extensionLibraries.controllers')

.controller('AngularDialogServiceController', [ '$scope', 'dialogs', function($scope, dialogs) {

	// tutti i metodi accettano in input (come ultimo parametro) anche un oggetto indicante le proprieta' del popup
	
	$scope.openError = function() {
		dialogs.error('Error','Errore - verificare');
	};
	
	$scope.openNotifica = function() {

		dialogs.notify('Notifica','Questa e\' una notifica');

	};
	
	$scope.openConferma = function() {

		var dialogPromise = dialogs.confirm('Conferma','Questa e\' una richiesta di conferma');
		
		dialogPromise.result.then(function(btn){
			alert("Hai detto Si " + btn);
		},function(btn){
			alert("Hai detto No " + btn);
		});

	};
	
	$scope.openWait = function() {

		dialogs.wait('Loading','Caricamento Applicazione',50);

	};
	
	
	
	$scope.openCustomPopup = function() {

		var dialogPromise = dialogs.create('CustomPopup.jsp','CustomPopupController',{},'lg');
		
		dialogPromise.result.then(function(name){
			alert("Hai detto " + name);
		},function(){
			alert("Hai Cancellato " + name);
		});

	};

} ]);