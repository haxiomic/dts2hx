package node;

@:jsRequire("trace_events") @valueModuleOnly extern class Trace_events {
	/**
		Creates and returns a Tracing object for the given set of categories.
	**/
	static function createTracing(options:node.trace_events.CreateTracingOptions):node.trace_events.Tracing;
	/**
		Returns a comma-separated list of all currently-enabled trace event
		categories. The current set of enabled trace event categories is
		determined by the union of all currently-enabled `Tracing` objects and
		any categories enabled using the `--trace-event-categories` flag.
	**/
	static function getEnabledCategories():String;
}