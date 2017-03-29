var app = require('express')();  
var server = require('http').Server(app);  


var configureEndpoint = function(){
	
	app.use(function (req, res, next) {

		// Website you wish to allow to connect
		res.setHeader("Access-Control-Allow-Origin", "http://localhost:8080");
		res.setHeader('Access-Control-Allow-Credentials', true);
		// Pass to next layer of middleware
		next();
	});
	
	
	
	app.get('/punteggiolive-websocket', function(req, res) {  
		console.log('connected');
	});
	
	server.listen(9080);  
}

exports.server = server; 
exports.configureEndpoint = configureEndpoint; 