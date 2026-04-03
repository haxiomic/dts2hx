package undici_types.diagnosticschannel;

typedef ClientBeforeConnectMessage = {
	var connectParams : ConnectParams;
	dynamic function connector(options:undici_types.buildconnector.Options, callback:undici_types.buildconnector.Callback):Void;
};