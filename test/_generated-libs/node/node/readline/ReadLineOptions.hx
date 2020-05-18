package node.readline;

typedef ReadLineOptions = {
	var input : global.nodejs.ReadableStream;
	@:optional
	var output : global.nodejs.WritableStream;
	@:optional
	dynamic function completer(line:String, callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, result:CompleterResult) -> Void>):Dynamic;
	@:optional
	var terminal : Bool;
	@:optional
	var historySize : Float;
	@:optional
	var prompt : String;
	@:optional
	var crlfDelay : Float;
	@:optional
	var removeHistoryDuplicates : Bool;
};