angular.module('extensionLibraries.controllers')

.controller('AngularMultiSelectController', [ '$scope', function($scope) {

	$scope.selectedCitta = [];
	
	$scope.citta = [ {
		name : 'Verona',
	}, {
		name : 'Catania',
	}, {
		name : 'Vicenza',
	} ];

} ]);