package undici_types.diagnosticschannel;

typedef ClientConnectErrorMessage = {
	var error : Any;
	var socket : node.net.Socket;
	var connectParams : ConnectParams;
	dynamic function connector(options:undici_types.buildconnector.Options, callback:undici_types.buildconnector.Callback):Void;
};