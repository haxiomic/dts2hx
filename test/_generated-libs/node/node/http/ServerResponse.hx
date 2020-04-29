package node.http;
@:jsRequire("http", "ServerResponse") extern class ServerResponse {
	function new(req:IncomingMessage);
	var statusCode : Float;
	var statusMessage : String;
	function assignSocket(socket:node.net.Socket):Void;
	function detachSocket(socket:node.net.Socket):Void;
	function writeContinue(?callback:() -> Void):Void;
	@:overload(function(statusCode:Float, ?headers:OutgoingHttpHeaders):ServerResponse { })
	function writeHead(statusCode:Float, ?reasonPhrase:String, ?headers:OutgoingHttpHeaders):ServerResponse;
	var upgrading : Bool;
	var chunkedEncoding : Bool;
	var shouldKeepAlive : Bool;
	var useChunkedEncodingByDefault : Bool;
	var sendDate : Bool;
	var finished : Bool;
	var headersSent : Bool;
	var connection : node.net.Socket;
	function setTimeout(msecs:Float, ?callback:() -> Void):OutgoingMessage;
	function setHeader(name:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>):Void;
	function getHeader(name:String):Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>>;
	function getHeaders():OutgoingHttpHeaders;
	function getHeaderNames():std.Array<String>;
	function hasHeader(name:String):Bool;
	function removeHeader(name:String):Void;
	function addTrailers(headers:haxe.extern.EitherType<OutgoingHttpHeaders, std.Array<js.lib.Tuple2<String, String>>>):Void;
	function flushHeaders():Void;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	function _destroy(error:Null<js.lib.IError>, callback:(?error:js.lib.IError) -> Void):Void;
	function _final(callback:(?error:js.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?encoding:String, ?cb:(error:Null<js.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?cb:(error:Null<js.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):node.stream.Writable;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:js.lib.IError):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Writable { })
	function addListener(event:String, listener:() -> Void):node.stream.Writable;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Writable { })
	function on(event:String, listener:() -> Void):node.stream.Writable;
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Writable { })
	function once(event:String, listener:() -> Void):node.stream.Writable;
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Writable { })
	function prependListener(event:String, listener:() -> Void):node.stream.Writable;
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Writable { })
	function prependOnceListener(event:String, listener:() -> Void):node.stream.Writable;
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):node.stream.Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Writable { })
	function removeListener(event:String, listener:() -> Void):node.stream.Writable;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):node.events.EventEmitter;
	function setMaxListeners(n:Float):node.events.EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}