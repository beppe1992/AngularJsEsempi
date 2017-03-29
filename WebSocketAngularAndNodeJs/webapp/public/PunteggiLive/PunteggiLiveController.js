angular.module('webSocketAngular.controllers')

.controller('PunteggiLiveController',
		[ '$scope','$stomp','growl', function($scope, $stomp,growl) {

			 $scope.punteggi = [];
			  			 
			 $stomp
		      .connect('http://localhost:9080/punteggiolive-websocket', {})

		      // frame = CONNECTED headers
		      .then(function (frame) {
		        var subscription = $stomp.subscribe('/aggiornamenti/punteggi', function (payload, headers, res) {
		        	
		          growl.info('GOAL!!!!!');	
		          
		          // aggiorno la lista dei miei punteggi
		          $scope.punteggi = payload;
		          $scope.$apply($scope.punteggi);
		          
		        });
		        
		      });
			 
			 $scope.refreshPunteggio = function(){
				 $stomp.send('/app/refresh-forzato', '');
			 };} ]);