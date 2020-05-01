package ts.html;
typedef ReadableByteStreamController = {
	final byobRequest : Null<ReadableStreamBYOBRequest>;
	final desiredSize : Null<Float>;
	function close():Void;
	function enqueue(chunk:ts.lib.ArrayBufferView):Void;
	function error(?error:Dynamic):Void;
};