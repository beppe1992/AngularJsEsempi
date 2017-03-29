var webSocketAngular = angular.module('webSocketAngular', [
		'webSocketAngular.controllers', 'ngStomp','angular-growl' ]);

angular.module('webSocketAngular.controllers', []);

webSocketAngular.config(['growlProvider', function(growlProvider) {
	  growlProvider.globalTimeToLive(4000);
}]);