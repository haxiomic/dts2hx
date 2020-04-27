package node.http2;
extern interface StreamPriorityOptions {
	@:optional
	var exclusive : Bool;
	@:optional
	var parent : Float;
	@:optional
	var weight : Float;
	@:optional
	var silent : Bool;
}