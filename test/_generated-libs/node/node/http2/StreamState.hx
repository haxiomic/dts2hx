package node.http2;

typedef StreamState = {
	@:optional
	var localWindowSize : Float;
	@:optional
	var state : Float;
	@:optional
	var localClose : Float;
	@:optional
	var remoteClose : Float;
	@:optional
	var sumDependencyWeight : Float;
	@:optional
	var weight : Float;
};