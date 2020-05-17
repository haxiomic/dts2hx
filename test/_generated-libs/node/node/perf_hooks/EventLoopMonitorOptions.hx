package node.perf_hooks;

typedef EventLoopMonitorOptions = {
	/**
		The sampling rate in milliseconds.
		Must be greater than zero.
	**/
	@:optional
	var resolution : Float;
};