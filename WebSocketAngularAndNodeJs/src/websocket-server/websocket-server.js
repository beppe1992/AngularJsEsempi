var app = require('express')();  
var server = require('http').Server(app);  
var io = require('socket.io')(server);

app.get('/punteggiolive-websocket', function(req, res) {  
    console.log('connected');
});

io.on('connection', function(socket) {  

	socket.on('/refresh-forzato', function(data) {
        console.log('Refresh Forzano:', data.message);
    });

    socket.emit('/aggiornamenti/punteggi', { message: 'A new user has joined!' });
});

server.listen(9080);  