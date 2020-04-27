package js.html;
extern interface ReadableByteStreamController {
	final byobRequest : Null<ReadableStreamBYOBRequest>;
	final desiredSize : Null<Float>;
	function close():Void;
	function enqueue(chunk:js.lib.ArrayBufferView):Void;
	function error(?error:Any):Void;
}