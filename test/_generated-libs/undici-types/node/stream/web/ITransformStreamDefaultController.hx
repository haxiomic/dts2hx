package node.stream.web;

typedef ITransformStreamDefaultController<O> = {
	final desiredSize : Null<Float>;
	function enqueue(?chunk:O):Void;
	function error(?reason:Dynamic):Void;
	function terminate():Void;
};