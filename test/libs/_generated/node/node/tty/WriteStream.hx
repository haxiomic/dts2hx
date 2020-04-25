package node.tty;
@:jsRequire("tty", "WriteStream") extern class WriteStream extends node.net.Socket {
	/**
		events.EventEmitter
		   1. close
		   2. connect
		   3. data
		   4. drain
		   5. end
		   6. error
		   7. lookup
		   8. timeout
		
		
		
		events.EventEmitter
		   1. close
		   2. connect
		   3. data
		   4. drain
		   5. end
		   6. error
		   7. lookup
		   8. timeout
	**/
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	function clearLine(dir:Int):Void;
	function clearScreenDown():Void;
	function cursorTo(x:Float, y:Float):Void;
	function getColorDepth(?env:{ }):Float;
	function getWindowSize():js.lib.Tuple2<Float, Float, Float>;
	var columns : Float;
	var rows : Float;
	var isTTY : Bool;
}