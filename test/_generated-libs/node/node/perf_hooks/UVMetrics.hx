package node.perf_hooks;

typedef UVMetrics = {
	/**
		Number of event loop iterations.
	**/
	final loopCount : Float;
	/**
		Number of events that have been processed by the event handler.
	**/
	final events : Float;
	/**
		Number of events that were waiting to be processed when the event provider was called.
	**/
	final eventsWaiting : Float;
};