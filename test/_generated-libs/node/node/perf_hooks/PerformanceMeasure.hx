package node.perf_hooks;

/**
	Exposes measures created via the `Performance.measure()` method.
	
	The constructor of this class is not exposed to users directly.
**/
@:jsRequire("perf_hooks", "PerformanceMeasure") extern class PerformanceMeasure extends PerformanceEntry {
	final detail : Dynamic;
	static var prototype : PerformanceMeasure;
}