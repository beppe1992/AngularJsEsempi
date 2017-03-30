var serverConfiguration = require('../server-configuration/server-configuration.js');
var schedule = require('node-schedule');


exports.configureMessageListener = function(){
	serverConfiguration.express.ws('/app/refresh-forzato', function(ws, req) {
		ws.on('message', function(msg) {
			console.log('Refresh Forzano:', data.message);
			ws.emit('/aggiornamenti/punteggi', { message: 'A new user has joined!' });
		});

		var j = schedule.scheduleJob({second: 0}, function(){
			ws.emit('/aggiornamenti/punteggi', { message: 'A new user has joined!' });
		});

	});
}
