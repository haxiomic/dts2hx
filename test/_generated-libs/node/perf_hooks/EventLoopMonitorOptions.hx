package node.perf_hooks;
extern typedef EventLoopMonitorOptions = {
	/**
		The sampling rate in milliseconds.
		Must be greater than zero.
	**/
	@:optional
	var resolution : Float;
};