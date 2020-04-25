package node.http2;
extern interface StreamPriorityOptions {
	@:optional
	var exclusive : Null<Bool>;
	@:optional
	var parent : Null<Float>;
	@:optional
	var weight : Null<Float>;
	@:optional
	var silent : Null<Bool>;
}