package node.stream.web;

/**
	This Streams API interface provides a built-in byte length queuing
	strategy that can be used when constructing streams.
**/
typedef ICountQueuingStrategy = {
	final highWaterMark : Float;
	function size(?chunk:Dynamic):Float;
};