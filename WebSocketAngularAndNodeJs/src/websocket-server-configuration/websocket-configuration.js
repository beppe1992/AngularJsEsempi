var serverConfiguration = require('../server-configuration/server-configuration.js');
var expressWs = require('express-ws')(serverConfiguration.express);

exports.configureEndpoint = function(){

	serverConfiguration.express.get('/punteggiolive-websocket', function(req, res) {
		console.log('connected');
		res.end();
	});

}
