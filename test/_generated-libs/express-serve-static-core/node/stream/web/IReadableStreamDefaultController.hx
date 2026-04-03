package node.stream.web;

typedef IReadableStreamDefaultController<R> = {
	final desiredSize : Null<Float>;
	function close():Void;
	function enqueue(?chunk:R):Void;
	function error(?e:Dynamic):Void;
};