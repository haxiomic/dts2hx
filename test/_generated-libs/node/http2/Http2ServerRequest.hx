package node.http2;
@:jsRequire("http2", "Http2ServerRequest") extern class Http2ServerRequest {
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
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function setEncoding(encoding:String):Http2ServerRequest;
	function pause():Http2ServerRequest;
	function resume():Http2ServerRequest;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Http2ServerRequest;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Http2ServerRequest;
	function push(chunk:Any, ?encoding:String):Bool;
	function _destroy(error:Null<ts.lib.IError>, callback:(?error:ts.lib.IError) -> Void):Void;
	function destroy(?error:ts.lib.IError):Void;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2ServerRequest { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Http2ServerRequest { })
	function removeListener(event:String, listener:() -> Void):Http2ServerRequest;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Http2ServerRequest;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Http2ServerRequest;
	function setMaxListeners(n:Float):Http2ServerRequest;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}