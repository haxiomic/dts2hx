package node.http2;
extern typedef ServerHttp2Stream = {
	function additionalHeaders(headers:node.http.OutgoingHttpHeaders):Void;
	final headersSent : Bool;
	final pushAllowed : Bool;
	@:overload(function(headers:node.http.OutgoingHttpHeaders, ?options:StreamPriorityOptions, ?callback:(err:Null<js.lib.IError>, pushStream:ServerHttp2Stream, headers:node.http.OutgoingHttpHeaders) -> Void):Void { })
	function pushStream(headers:node.http.OutgoingHttpHeaders, ?callback:(err:Null<js.lib.IError>, pushStream:ServerHttp2Stream, headers:node.http.OutgoingHttpHeaders) -> Void):Void;
	function respond(?headers:node.http.OutgoingHttpHeaders, ?options:ServerStreamResponseOptions):Void;
	function respondWithFD(fd:Float, ?headers:node.http.OutgoingHttpHeaders, ?options:ServerStreamFileResponseOptions):Void;
	function respondWithFile(path:String, ?headers:node.http.OutgoingHttpHeaders, ?options:ServerStreamFileResponseOptionsWithError):Void;
	final aborted : Bool;
	final closed : Bool;
	final destroyed : Bool;
	final pending : Bool;
	final rstCode : Float;
	final sentHeaders : node.http.OutgoingHttpHeaders;
	@:optional
	final sentInfoHeaders : std.Array<node.http.OutgoingHttpHeaders>;
	@:optional
	final sentTrailers : node.http.OutgoingHttpHeaders;
	final session : Http2Session;
	final state : StreamState;
	/**
		Set the true if the END_STREAM flag was set in the request or response HEADERS frame received,
		indicating that no additional data should be received and the readable side of the Http2Stream will be closed.
	**/
	final endAfterHeaders : Bool;
	function close(?code:Float, ?callback:() -> Void):Void;
	function priority(options:StreamPriorityOptions):Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
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
		
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Stream;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, chunk:haxe.extern.EitherType<String, global.IBuffer>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, frameType:Float, errorCode:Float):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, code:Float):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, trailers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Http2Stream;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Http2Stream;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Stream;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Stream;
	function sendTrailers(headers:node.http.OutgoingHttpHeaders):Http2Stream;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	function _destroy(error:Null<js.lib.IError>, callback:(error:Null<js.lib.IError>) -> Void):Void;
	function _final(callback:(?error:js.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?cb:(error:Null<js.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?encoding:String, ?cb:(error:Null<js.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):node.stream.Duplex;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
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
	function destroy(?error:js.lib.IError):Void;
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
};