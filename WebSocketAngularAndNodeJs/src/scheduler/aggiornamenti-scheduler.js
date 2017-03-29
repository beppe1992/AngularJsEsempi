var schedule = require('node-schedule');
var socket = require('../websocket-server-configuration/websocket-configuration.js');

var startSchedule = function(){
	
	var j = schedule.scheduleJob({second: 0}, function(){
		socket.emit('/aggiornamenti/punteggi', { message: 'A new user has joined!' });
	});
}

exports.startSchedule = startSchedule; 
