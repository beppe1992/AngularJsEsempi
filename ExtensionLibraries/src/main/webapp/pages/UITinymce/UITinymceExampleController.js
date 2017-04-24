angular.module('extensionLibraries.controllers')

.controller('UITinymceExampleController', [ '$scope','$sce', function($scope,$sce) {

	$scope.convertiHtml = function() {
	      $scope.descrizioneHtml = $sce.trustAsHtml($scope.descrizione);
	};
	
	$scope.tinymceOptions = {
		    inline: false,
		    menubar: false,
		    resize: false,
		    statusbar: false
		};
	
} ]);