package node.http2;
extern interface IncomingHttpHeaders extends node.http.IncomingHttpHeaders {
	@:native(":path")
	@:optional
	var ColonPath : String;
	@:native(":method")
	@:optional
	var ColonMethod : String;
	@:native(":authority")
	@:optional
	var ColonAuthority : String;
	@:native(":scheme")
	@:optional
	var ColonScheme : String;
}