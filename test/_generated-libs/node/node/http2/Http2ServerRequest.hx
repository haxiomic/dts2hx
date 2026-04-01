package node.http2;

@:jsRequire("http2", "Http2ServerRequest") extern class Http2ServerRequest extends node.stream.Readable {
	private function new();
	var headers : IncomingHttpHeaders;
	var httpVersion : String;
	var method : String;
	var rawHeaders : Array<String>;
	var rawTrailers : Array<String>;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	var socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
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
	**/
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, hadError:Bool, code:Float):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	function setEncoding(encoding:String):Http2ServerRequest;
	function pause():Http2ServerRequest;
	function resume():Http2ServerRequest;
	function unpipe(?destination:global.nodejs.WritableStream):Http2ServerRequest;
	function wrap(oldStream:global.nodejs.ReadableStream):Http2ServerRequest;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function removeListener(event:String, listener:() -> Void):Http2ServerRequest;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2ServerRequest;
	function setMaxListeners(n:Float):Http2ServerRequest;
	static var prototype : Http2ServerRequest;
}