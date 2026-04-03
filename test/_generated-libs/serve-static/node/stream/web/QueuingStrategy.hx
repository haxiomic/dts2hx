package node.stream.web;

typedef QueuingStrategy<T> = {
	@:optional
	var highWaterMark : Float;
	@:optional
	dynamic function size(?chunk:T):Float;
};