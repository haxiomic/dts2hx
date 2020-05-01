package node.http2;
typedef Http2Stream = {
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
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Stream;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, chunk:ts.AnyOf2<String, global.IBuffer>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, frameType:Float, errorCode:Float):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, code:Float):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, trailers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Stream;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Stream;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Stream;
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.IBuffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(code:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(trailers:IncomingHttpHeaders, flags:Float) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Stream;
	function sendTrailers(headers:node.http.OutgoingHttpHeaders):Http2Stream;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Dynamic, encoding:String, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Dynamic; var encoding : String; }>, callback:(?error:ts.lib.IError) -> Void):Void;
	function _destroy(error:Null<ts.lib.IError>, callback:(error:Null<ts.lib.IError>) -> Void):Void;
	function _final(callback:(?error:ts.lib.IError) -> Void):Void;
	@:overload(function(chunk:Dynamic, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool { })
	function write(chunk:Dynamic, ?encoding:String, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Http2Stream;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Dynamic;
	function setEncoding(encoding:String):Http2Stream;
	function pause():Http2Stream;
	function resume():Http2Stream;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Http2Stream;
	function unshift(chunk:Dynamic):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Http2Stream;
	function push(chunk:Dynamic, ?encoding:String):Bool;
	function destroy(?error:ts.lib.IError):Void;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Stream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Stream { })
	function removeListener(event:String, listener:() -> Void):Http2Stream;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Stream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2Stream;
	function setMaxListeners(n:Float):Http2Stream;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};