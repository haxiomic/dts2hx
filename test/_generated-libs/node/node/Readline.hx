package node;

@:jsRequire("readline") @valueModuleOnly extern class Readline {
	@:overload(function(options:node.readline.ReadLineOptions):node.readline.Interface { })
	static function createInterface(input:global.nodejs.ReadableStream, ?output:global.nodejs.WritableStream, ?completer:ts.AnyOf2<node.readline.Completer, node.readline.AsyncCompleter>, ?terminal:Bool):node.readline.Interface;
	static function cursorTo(stream:global.nodejs.WritableStream, x:Float, ?y:Float):Void;
	static function emitKeypressEvents(stream:global.nodejs.ReadableStream, ?interface_:node.readline.Interface):Void;
	static function moveCursor(stream:global.nodejs.WritableStream, dx:ts.AnyOf2<String, Float>, dy:ts.AnyOf2<String, Float>):Void;
	static function clearLine(stream:global.nodejs.WritableStream, dir:Float):Void;
	static function clearScreenDown(stream:global.nodejs.WritableStream):Void;
}