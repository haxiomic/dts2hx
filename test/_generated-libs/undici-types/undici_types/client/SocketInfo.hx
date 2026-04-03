package undici_types.client;

typedef SocketInfo = {
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
	@:optional
	var remoteAddress : String;
	@:optional
	var remotePort : Float;
	@:optional
	var remoteFamily : String;
	@:optional
	var timeout : Float;
	@:optional
	var bytesWritten : Float;
	@:optional
	var bytesRead : Float;
};