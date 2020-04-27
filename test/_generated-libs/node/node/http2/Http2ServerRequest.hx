package node.http2;
@:jsRequire("http2", "Http2ServerRequest") extern class Http2ServerRequest extends node.stream.Readable {
	function new();
	var headers : IncomingHttpHeaders;
	var httpVersion : String;
	var method : String;
	var rawHeaders : std.Array<String>;
	var rawTrailers : std.Array<String>;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	var socket : haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>;
	var stream : ServerHttp2Stream;
	var trailers : IncomingHttpHeaders;
	var url : String;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
		
		
		
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, hadError:Bool, code:Float):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerRequest;
}