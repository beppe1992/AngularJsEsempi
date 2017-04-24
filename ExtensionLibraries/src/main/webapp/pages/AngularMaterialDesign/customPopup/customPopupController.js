angular.module('extensionLibraries.controllers').controller('customPopupController',
		[ '$scope','$mdDialog', 'datoInput',
		  function($scope,$mdDialog, datoInput) {
		
			$scope.inizializza = function(){
				$scope.nome = datoInput;
			}
	     	     
		    $scope.cancel = function() {
		         $mdDialog.cancel();
		    };

		    $scope.submitForm = function() {
		        $mdDialog.hide('ciao ' + $scope.nome);
		    };
		     	     
		      				      
		}
]);