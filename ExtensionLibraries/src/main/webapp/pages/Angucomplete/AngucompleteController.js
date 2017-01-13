angular.module('extensionLibraries.controllers')

.controller('AngucompleteController', [ '$scope', function($scope) {

	$scope.selectedCitta = '';
	
	$scope.citta = [ {
		name : 'Verona',
	}, {
		name : 'Catania',
	}, {
		name : 'Vicenza',
	} ];

} ]);