var extensionLibraries = angular.module('extensionLibraries', [
		'extensionLibraries.controllers', 'angular-loading-bar', 'ngAnimate' ]);

angular.module('extensionLibraries.controllers', []);

extensionLibraries.config([ 'cfpLoadingBarProvider',
		function(cfpLoadingBarProvider) {
			cfpLoadingBarProvider.includeSpinner = true;
			cfpLoadingBarProvider.includeBar = true;
} ])