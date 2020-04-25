package node.stream;
extern interface ReadableOptions {
	@:optional
	var highWaterMark : Null<Float>;
	@:optional
	var encoding : Null<String>;
	@:optional
	var objectMode : Null<Bool>;
	@:optional
	function read(size:Float):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
}