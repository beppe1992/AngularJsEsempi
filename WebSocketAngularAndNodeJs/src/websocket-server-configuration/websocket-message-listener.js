var websocketConfiguration = require('./websocket-configuration.js');
var io = require('socket.io')(websocketConfiguration.server);
var schedule = require('node-schedule');

var configureMessageListener = function(){
	io.on('connection', function(socket) {  

		// quando avviene la richiesta eseguo un refresh forzato e invio nuovamente gli aggiornamenti ai client
		socket.on('/app/refresh-forzato', function(data) {
			console.log('Refresh Forzano:', data.message);
			
			socket.emit('/aggiornamenti/punteggi', { message: 'A new user has joined!' });
		});
		
		var j = schedule.scheduleJob({second: 0}, function(){
			socket.emit('/aggiornamenti/punteggi', { message: 'A new user has joined!' });
		});

		exports.socket = socket; 
	});
}

exports.configureMessageListener = configureMessageListener; 
