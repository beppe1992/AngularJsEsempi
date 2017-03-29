var serverConfiguration = require('./server-configuration/server-configuration.js');
var websocketConfiguration = require('./websocket-server-configuration/websocket-configuration.js');
var websocketMessageListener = require('./websocket-server-configuration/websocket-message-listener.js');

serverConfiguration.configureServer();

websocketConfiguration.configureEndpoint();

websocketMessageListener.configureMessageListener();
