package node.stream.web;

typedef IReadableByteStreamController = {
	final byobRequest : Null<ReadableStreamBYOBRequest>;
	final desiredSize : Null<Float>;
	function close():Void;
	function enqueue(chunk:js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>):Void;
	function error(?error:Dynamic):Void;
};