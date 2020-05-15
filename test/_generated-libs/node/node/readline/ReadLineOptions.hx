package node.readline;
typedef ReadLineOptions = {
	var input : global.nodejs.ReadableStream;
	@:optional
	var output : global.nodejs.WritableStream;
	@:optional
	var completer : ts.AnyOf2<Completer, AsyncCompleter>;
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