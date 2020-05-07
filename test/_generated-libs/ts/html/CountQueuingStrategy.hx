package ts.html;
/**
	This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams.
**/
@:native("CountQueuingStrategy") extern class CountQueuingStrategy {
	function new(options:{ var highWaterMark : Float; });
	var highWaterMark : Float;
	function size(chunk:Dynamic):Int;
	static var prototype : CountQueuingStrategy;
}