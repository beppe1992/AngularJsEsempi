angular.module('extensionLibraries.controllers')

.controller('AngularMaterialDesignController', [ '$scope','$mdDialog','$anchorScroll', function($scope,$mdDialog,$anchorScroll) {

	// VARIABILI PER ESEMPIO COLLAPSIBLE PANEL
	$scope.listaElementi = [ {
		titolo : 'Header Elemento - 1',
		contenuto : 'Testo Elemento - 1'
	}, {
		titolo : 'Header Elemento - 2',
		contenuto : 'Testo Elemento - 2'
	} ];


	$scope.openPopup = function(ev){
    	    	
    	$mdDialog.show({
    	      templateUrl: EXTENSION_LIBRARIES.contextPath +  'pages/AngularMaterialDesign/customPopup/customPopup.html',
    	      parent: angular.element(document.body),
    	      targetEvent: ev,
    	      clickOutsideToClose:true,
    	      fullscreen: true,
    	      controller: 'customPopupController',
    	      locals: { datoInput : 'Giuseppe' },
    	}).then(function(returnObj) {
    	    	
    		console.log(returnObj);
    		
    	});
    	
    }
	
	$scope.gotoTop = function() {
         
         $anchorScroll("topPage");
     }; 


	
} ]);