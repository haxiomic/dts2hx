package node.stream.web;

@:jsRequire("stream/web", "TransformStreamDefaultController") extern class TransformStreamDefaultController<O> {
	function new();
	final desiredSize : Null<Float>;
	function enqueue(?chunk:O):Void;
	function error(?reason:Dynamic):Void;
	function terminate():Void;
	static var prototype : TransformStreamDefaultController<Dynamic>;
}