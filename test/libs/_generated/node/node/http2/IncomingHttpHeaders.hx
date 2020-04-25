package node.http2;
extern interface IncomingHttpHeaders extends node.http.IncomingHttpHeaders {
	@:native(":path")
	@:optional
	var ColonPath : Null<String>;
	@:native(":method")
	@:optional
	var ColonMethod : Null<String>;
	@:native(":authority")
	@:optional
	var ColonAuthority : Null<String>;
	@:native(":scheme")
	@:optional
	var ColonScheme : Null<String>;
}