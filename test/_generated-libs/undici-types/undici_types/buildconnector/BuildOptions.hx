package undici_types.buildconnector;

typedef BuildOptions = ts.AnyOf3<node.tls.ConnectionOptions & {
	@:optional
	var allowH2 : Bool;
	@:optional
	var maxCachedSessions : Float;
	@:optional
	var socketPath : String;
	@:optional
	var timeout : Float;
	@:optional
	var port : Float;
	@:optional
	var keepAlive : Bool;
	@:optional
	var keepAliveInitialDelay : Float;
}, node.net.TcpNetConnectOpts & {
	@:optional
	var allowH2 : Bool;
	@:optional
	var maxCachedSessions : Float;
	@:optional
	var socketPath : String;
	@:optional
	var timeout : Float;
	@:optional
	var port : Float;
	@:optional
	var keepAlive : Bool;
	@:optional
	var keepAliveInitialDelay : Float;
}, node.net.IpcNetConnectOpts & {
	@:optional
	var allowH2 : Bool;
	@:optional
	var maxCachedSessions : Float;
	@:optional
	var socketPath : String;
	@:optional
	var timeout : Float;
	@:optional
	var port : Float;
	@:optional
	var keepAlive : Bool;
	@:optional
	var keepAliveInitialDelay : Float;
}>;