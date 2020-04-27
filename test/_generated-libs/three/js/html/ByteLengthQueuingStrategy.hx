package js.html;
/**
	This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams.
**/
@:native("ByteLengthQueuingStrategy") @tsInterface extern class ByteLengthQueuingStrategy {
	function new(options:{ var highWaterMark : Float; });
	var highWaterMark : Float;
	function size(chunk:js.lib.ArrayBufferView):Float;
	static var prototype : ByteLengthQueuingStrategy;
}