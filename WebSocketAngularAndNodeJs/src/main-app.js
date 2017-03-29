var websocketConfiguration = require('./websocket-server-configuration/websocket-configuration.js');
var websocketMessageListener = require('./websocket-server-configuration/websocket-message-listener.js');
var startSchedule = require('./scheduler/aggiornamenti-scheduler.js');

websocketConfiguration.configureEndpoint();

websocketMessageListener.configureMessageListener();

//startSchedule.startSchedule();