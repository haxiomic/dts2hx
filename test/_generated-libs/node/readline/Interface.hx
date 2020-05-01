package node.readline;
@:jsRequire("readline", "Interface") extern class Interface extends node.events.EventEmitter {
	/**
		NOTE: According to the documentation:
		
		> Instances of the `readline.Interface` class are constructed using the
		> `readline.createInterface()` method.
	**/
	@:overload(function(options:ReadLineOptions):Interface { })
	function new(input:global.nodejs.ReadableStream, ?output:global.nodejs.WritableStream, ?completer:ts.AnyOf2<(line:String) -> ts.Tuple2<std.Array<String>, String>, (line:String, callback:(?err:ts.lib.IError, ?result:ts.Tuple2<std.Array<String>, String>) -> Void) -> Dynamic>, ?terminal:Bool);
	final terminal : Bool;
	function setPrompt(prompt:String):Void;
	function prompt(?preserveCursor:Bool):Void;
	function question(query:String, callback:(answer:String) -> Void):Void;
	function pause():Interface;
	function resume():Interface;
	function close():Void;
	function write(data:ts.AnyOf2<String, global.IBuffer>, ?key:Key):Void;
}