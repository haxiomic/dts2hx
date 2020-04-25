package node.fs;
@:jsRequire("fs", "ReadStream") extern class ReadStream extends node.stream.Readable {
	function close():Void;
	var bytesRead : Float;
	var path : haxe.extern.EitherType<String, global.Buffer>;
	/**
		events.EventEmitter
		   1. open
		   2. close
	**/
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
}