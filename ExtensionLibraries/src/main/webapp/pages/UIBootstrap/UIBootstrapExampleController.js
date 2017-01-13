angular.module('extensionLibraries.controllers')

.controller('UIBootstrapExampleController', [ '$scope', function($scope) {

	// VARIABILI PER ESEMPIO COLLAPSIBLE PANEL
	$scope.listaElementi = [ {
		titolo : 'Header Elemento - 1',
		contenuto : 'Testo Elemento - 1'
	}, {
		titolo : 'Header Elemento - 2',
		contenuto : 'Testo Elemento - 2'
	} ];

	// VARIABILI PER ESEMPIO

	$scope.dateOptions = {
		maxDate : new Date(2020, 5, 22),
		minDate : new Date(),
		startingDay : 1
	};

	$scope.open = function() {
		$scope.popup.opened = true;
	};

	$scope.popup = {
		opened : false
	};
} ]);