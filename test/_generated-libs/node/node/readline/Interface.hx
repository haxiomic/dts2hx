package node.readline;
@:jsRequire("readline", "Interface") extern class Interface {
	/**
		NOTE: According to the documentation:
		
		> Instances of the `readline.Interface` class are constructed using the
		> `readline.createInterface()` method.
	**/
	@:overload(function(options:ReadLineOptions):Interface { })
	function new(input:global.nodejs.ReadableStream, ?output:global.nodejs.WritableStream, ?completer:haxe.extern.EitherType<(line:String) -> js.lib.Tuple2<std.Array<String>, String>, (line:String, callback:(?err:js.lib.IError, ?result:js.lib.Tuple2<std.Array<String>, String>) -> Void) -> Any>, ?terminal:Bool);
	final terminal : Bool;
	function setPrompt(prompt:String):Void;
	function prompt(?preserveCursor:Bool):Void;
	function question(query:String, callback:(answer:String) -> Void):Void;
	function pause():Interface;
	function resume():Interface;
	function close():Void;
	function write(data:haxe.extern.EitherType<String, global.IBuffer>, ?key:Key):Void;
	/**
		events.EventEmitter
		1. close
		2. line
		3. pause
		4. resume
		5. SIGCONT
		6. SIGINT
		7. SIGTSTP
	**/
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Interface;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, input:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Interface;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Interface;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Interface;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Interface;
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