angular.module('extensionLibraries.controllers')

.controller('CustomPopupController', [ '$scope','$uibModalInstance', function($scope,$uibModalInstance) {

	$scope.messaggioBenvenuto = 'Ciao';
	
	$scope.nome = '';
	
	$scope.conferma = function(){
		$uibModalInstance.close($scope.nome);
	}
	
	$scope.annulla = function(){
		$uibModalInstance.dismiss('Annulla');
	}

} ]);