package js.html;
/**
	This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams.
**/
@:native("CountQueuingStrategy") @tsInterface extern class CountQueuingStrategy {
	function new(options:{ var highWaterMark : Float; });
	var highWaterMark : Float;
	function size(chunk:Any):Int;
	static var prototype : CountQueuingStrategy;
}