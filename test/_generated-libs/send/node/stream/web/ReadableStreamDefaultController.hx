package node.stream.web;

@:jsRequire("stream/web", "ReadableStreamDefaultController") extern class ReadableStreamDefaultController<R> {
	function new();
	final desiredSize : Null<Float>;
	function close():Void;
	function enqueue(?chunk:R):Void;
	function error(?e:Dynamic):Void;
	static var prototype : ReadableStreamDefaultController<Dynamic>;
}