var serverConfiguration = require('../server-configuration/server-configuration.js');

exports.configureEndpoint = function(){

	serverConfiguration.express.get('/punteggiolive-websocket', function(req, res) {
		console.log('connected');
	});

}
