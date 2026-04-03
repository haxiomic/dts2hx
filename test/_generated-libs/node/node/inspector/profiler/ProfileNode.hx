package node.inspector.profiler;

/**
	Profile node. Holds callsite information, execution statistics and child nodes.
**/
typedef ProfileNode = {
	/**
		Unique id of the node.
	**/
	var id : Float;
	/**
		Function location.
	**/
	var callFrame : node.inspector.runtime.CallFrame;
	/**
		Number of samples where this node was on top of the call stack.
	**/
	@:optional
	var hitCount : Float;
	/**
		Child node ids.
	**/
	@:optional
	var children : Array<Float>;
	/**
		The reason of being not optimized. The function may be deoptimized or marked as don't optimize.
	**/
	@:optional
	var deoptReason : String;
	/**
		An array of source position ticks.
	**/
	@:optional
	var positionTicks : Array<PositionTickInfo>;
};