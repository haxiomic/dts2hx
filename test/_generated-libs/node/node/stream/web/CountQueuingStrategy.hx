package node.stream.web;

/**
	This Streams API interface provides a built-in byte length queuing
	strategy that can be used when constructing streams.
**/
@:jsRequire("stream/web", "CountQueuingStrategy") extern class CountQueuingStrategy {
	function new(init:QueuingStrategyInit);
	final highWaterMark : Float;
	function size(?chunk:Dynamic):Float;
	static var prototype : CountQueuingStrategy;
}