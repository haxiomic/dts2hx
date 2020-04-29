package node.http;
@:jsRequire("http", "IncomingMessage") extern class IncomingMessage {
	function new(socket:node.net.Socket);
	var httpVersion : String;
	var httpVersionMajor : Float;
	var httpVersionMinor : Float;
	var connection : node.net.Socket;
	var headers : IncomingHttpHeaders;
	var rawHeaders : std.Array<String>;
	var trailers : { };
	var rawTrailers : std.Array<String>;
	function setTimeout(msecs:Float, callback:() -> Void):IncomingMessage;
	/**
		Only valid for request obtained from http.Server.
	**/
	@:optional
	var method : String;
	/**
		Only valid for request obtained from http.Server.
	**/
	@:optional
	var url : String;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusCode : Float;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusMessage : String;
	var socket : node.net.Socket;
	function destroy(?error:js.lib.IError):Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function setEncoding(encoding:String):node.stream.Readable;
	function pause():node.stream.Readable;
	function resume():node.stream.Readable;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):node.stream.Readable;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):node.stream.Readable;
	function push(chunk:Any, ?encoding:String):Bool;
	function _destroy(error:Null<js.lib.IError>, callback:(?error:js.lib.IError) -> Void):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Any) -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Readable { })
	function addListener(event:String, listener:() -> Void):node.stream.Readable;
	@:overload(function(event:String, chunk:Any):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Readable { })
	function on(event:String, listener:() -> Void):node.stream.Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Readable { })
	function once(event:String, listener:() -> Void):node.stream.Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Readable { })
	function prependListener(event:String, listener:() -> Void):node.stream.Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Readable { })
	function prependOnceListener(event:String, listener:() -> Void):node.stream.Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Readable { })
	function removeListener(event:String, listener:() -> Void):node.stream.Readable;
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