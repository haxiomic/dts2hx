package node.perf_hooks;

typedef TimerifyOptions = {
	/**
		A histogram object created using `perf_hooks.createHistogram()` that will record runtime
		durations in nanoseconds.
	**/
	@:optional
	var histogram : RecordableHistogram;
};