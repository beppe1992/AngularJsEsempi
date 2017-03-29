var expressImport = require('express');
var express = expressImport();
var server = require('http').Server(express);

exports.configureServer = function(){

	express.use(function (req, res, next) {

		// Website you wish to allow to connect
		res.setHeader("Access-Control-Allow-Origin", "http://localhost:8080");
		res.setHeader('Access-Control-Allow-Credentials', true);
		// Pass to next layer of middleware
		next();
	});

	console.log(__dirname + '/webapp');
	express.use(expressImport.static(__dirname + '/webapp'));

	server.listen(9080);
}

exports.express = express;
exports.server = server;
