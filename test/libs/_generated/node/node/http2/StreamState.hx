package node.http2;
extern interface StreamState {
	@:optional
	var localWindowSize : Null<Float>;
	@:optional
	var state : Null<Float>;
	@:optional
	var streamLocalClose : Null<Float>;
	@:optional
	var streamRemoteClose : Null<Float>;
	@:optional
	var sumDependencyWeight : Null<Float>;
	@:optional
	var weight : Null<Float>;
}