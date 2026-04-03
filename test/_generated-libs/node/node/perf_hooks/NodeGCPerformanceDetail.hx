package node.perf_hooks;

typedef NodeGCPerformanceDetail = {
	/**
		When `performanceEntry.entryType` is equal to 'gc', the `performance.kind` property identifies
		the type of garbage collection operation that occurred.
		See perf_hooks.constants for valid values.
	**/
	final kind : Float;
	/**
		When `performanceEntry.entryType` is equal to 'gc', the `performance.flags`
		property contains additional information about garbage collection operation.
		See perf_hooks.constants for valid values.
	**/
	final flags : Float;
};