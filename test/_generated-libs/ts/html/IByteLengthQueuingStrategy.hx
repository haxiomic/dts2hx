package ts.html;
/**
	This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams.
**/
typedef IByteLengthQueuingStrategy = {
	var highWaterMark : Float;
	function size(chunk:ts.lib.ArrayBufferView):Float;
};