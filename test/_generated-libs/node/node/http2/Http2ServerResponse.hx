package node.http2;
@:jsRequire("http2", "Http2ServerResponse") extern class Http2ServerResponse {
	function new();
	function addTrailers(trailers:node.http.OutgoingHttpHeaders):Void;
	var connection : haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>;
	@:overload(function(?data:haxe.extern.EitherType<String, global.IBuffer>, ?callback:() -> Void):Void { })
	@:overload(function(?data:haxe.extern.EitherType<String, global.IBuffer>, ?encoding:String, ?callback:() -> Void):Void { })
	function end(?callback:() -> Void):Void;
	final finished : Bool;
	function getHeader(name:String):String;
	function getHeaderNames():std.Array<String>;
	function getHeaders():node.http.OutgoingHttpHeaders;
	function hasHeader(name:String):Bool;
	final headersSent : Bool;
	function removeHeader(name:String):Void;
	var sendDate : Bool;
	function setHeader(name:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>):Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	var socket : haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>;
	var statusCode : Float;
	var statusMessage : String;
	var stream : ServerHttp2Stream;
	@:overload(function(chunk:haxe.extern.EitherType<String, global.IBuffer>, ?encoding:String, ?callback:(err:js.lib.IError) -> Void):Bool { })
	function write(chunk:haxe.extern.EitherType<String, global.IBuffer>, ?callback:(err:js.lib.IError) -> Void):Bool;
	function writeContinue():Void;
	@:overload(function(statusCode:Float, ?statusMessage:String, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse { })
	function writeHead(statusCode:Float, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse;
	function createPushResponse(headers:node.http.OutgoingHttpHeaders, callback:(err:Null<js.lib.IError>, res:Http2ServerResponse) -> Void):Void;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, hadError:Bool, code:Float):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, error:js.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2ServerResponse;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):node.events.EventEmitter;
	function setMaxListeners(n:Float):node.events.EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}