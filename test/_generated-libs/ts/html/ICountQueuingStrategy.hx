package ts.html;
/**
	This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams.
**/
extern typedef ICountQueuingStrategy = {
	var highWaterMark : Float;
	function size(chunk:Dynamic):Int;
};