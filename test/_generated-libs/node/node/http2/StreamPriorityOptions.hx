package node.http2;

typedef StreamPriorityOptions = {
	@:optional
	var exclusive : Bool;
	@:optional
	var parent : Float;
	@:optional
	var weight : Float;
	@:optional
	var silent : Bool;
};