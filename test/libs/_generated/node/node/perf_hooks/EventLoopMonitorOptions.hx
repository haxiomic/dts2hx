package node.perf_hooks;
extern interface EventLoopMonitorOptions {
	/**
		The sampling rate in milliseconds.
		Must be greater than zero.
	**/
	@:optional
	var resolution : Null<Float>;
}