angular.module('extensionLibraries.controllers')

.controller('AngularMaterialDesignController', [ '$scope', function($scope) {

	// VARIABILI PER ESEMPIO COLLAPSIBLE PANEL
	$scope.listaElementi = [ {
		titolo : 'Header Elemento - 1',
		contenuto : 'Testo Elemento - 1'
	}, {
		titolo : 'Header Elemento - 2',
		contenuto : 'Testo Elemento - 2'
	} ];


	
} ]);