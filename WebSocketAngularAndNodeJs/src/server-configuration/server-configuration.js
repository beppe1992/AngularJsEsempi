var expressImport = require('express');
var express = expressImport();
var server = require('http').Server(express);
var path = require('path');

exports.configureServer = function(){

	express.use('/webapp',expressImport.static(path.join(__dirname, '../../webapp')));
	express.use('/node_modules',expressImport.static(path.join(__dirname, '../../node_modules')));
	express.use('/bower_components',expressImport.static(path.join(__dirname, '../../bower_components')));

	server.listen(8080);
}

exports.express = express;
exports.server = server;
