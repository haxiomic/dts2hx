package node.http2;
extern interface Http2Stream extends node.stream.Duplex {
	final aborted : Bool;
	final closed : Bool;
	final destroyed : Bool;
	final pending : Bool;
	final rstCode : Float;
	final sentHeaders : node.http.OutgoingHttpHeaders;
	@:optional
	final sentInfoHeaders : Null<std.Array<node.http.OutgoingHttpHeaders>>;
	@:optional
	final sentTrailers : Null<node.http.OutgoingHttpHeaders>;
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
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.Buffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Stream { })
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
	@:overload(function(event:String, chunk:haxe.extern.EitherType<String, global.Buffer>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
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
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.Buffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Stream { })
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
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.Buffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Stream { })
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
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.Buffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Stream { })
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
	@:overload(function(event:String, listener:(chunk:haxe.extern.EitherType<String, global.Buffer>) -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:() -> Void):Http2Stream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Stream { })
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
}