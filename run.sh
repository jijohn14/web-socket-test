#!/bin/sh

cat << EOS > server.js
console.log("WebSocket Server started");
var Msg = '';
var WebSocketServer = require('ws').Server
    , wss = new WebSocketServer({port: 8010});
    wss.on('connection', function(ws) {
        ws.on('message', function(message) {
        console.log('Received from client: %s', message);
        ws.send('' + message);
    });
 });
EOS

node server.js
