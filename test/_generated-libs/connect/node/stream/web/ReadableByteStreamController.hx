package node.stream.web;

@:jsRequire("stream/web", "ReadableByteStreamController") extern class ReadableByteStreamController {
	function new();
	final byobRequest : Null<ReadableStreamBYOBRequest>;
	final desiredSize : Null<Float>;
	function close():Void;
	function enqueue(chunk:js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>):Void;
	function error(?error:Dynamic):Void;
	static var prototype : ReadableByteStreamController;
}