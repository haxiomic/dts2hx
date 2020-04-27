package node.http2;
extern interface ClientHttp2Session extends Http2Session {
	function request(?headers:node.http.OutgoingHttpHeaders, ?options:ClientSessionRequestOptions):ClientHttp2Stream;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:Any, flags:Float) -> Void):ClientHttp2Session { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, alt:String, origin:String, stream:Float):Bool { })
	@:overload(function(event:String, session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>):Bool { })
	@:overload(function(event:String, stream:ClientHttp2Stream, headers:Any, flags:Float):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:Any, flags:Float) -> Void):ClientHttp2Session { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:Any, flags:Float) -> Void):ClientHttp2Session { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:Any, flags:Float) -> Void):ClientHttp2Session { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:Any, flags:Float) -> Void):ClientHttp2Session { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
}