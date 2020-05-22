package node.readline;

@:jsRequire("readline", "Interface") extern class Interface extends node.events.EventEmitter {
	/**
		NOTE: According to the documentation:
		
		> Instances of the `readline.Interface` class are constructed using the
		> `readline.createInterface()` method.
	**/
	@:overload(function(options:ReadLineOptions):Interface { })
	private function new(input:global.nodejs.ReadableStream, ?output:global.nodejs.WritableStream, ?completer:ts.AnyOf2<Completer, AsyncCompleter>, ?terminal:Bool);
	final terminal : Bool;
	function setPrompt(prompt:String):Void;
	function prompt(?preserveCursor:Bool):Void;
	function question(query:String, callback:(answer:String) -> Void):Void;
	function pause():Interface;
	function resume():Interface;
	function close():Void;
	function write(data:ts.AnyOf2<String, global.Buffer>, ?key:Key):Void;
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
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, input:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:(input:String) -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	@:overload(function(event:String, listener:() -> Void):Interface { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Interface;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Interface;
	function setMaxListeners(n:Float):Interface;
	static var prototype : Interface;
}