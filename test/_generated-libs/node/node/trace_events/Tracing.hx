package node.trace_events;

/**
	The `Tracing` object is used to enable or disable tracing for sets of
	categories. Instances are created using the
	`trace_events.createTracing()` method.
	
	When created, the `Tracing` object is disabled. Calling the
	`tracing.enable()` method adds the categories to the set of enabled trace
	event categories. Calling `tracing.disable()` will remove the categories
	from the set of enabled trace event categories.
**/
typedef Tracing = {
	/**
		A comma-separated list of the trace event categories covered by this
		`Tracing` object.
	**/
	final categories : String;
	/**
		Disables this `Tracing` object.
		
		Only trace event categories _not_ covered by other enabled `Tracing`
		objects and _not_ specified by the `--trace-event-categories` flag
		will be disabled.
	**/
	function disable():Void;
	/**
		Enables this `Tracing` object for the set of categories covered by
		the `Tracing` object.
	**/
	function enable():Void;
	/**
		`true` only if the `Tracing` object has been enabled.
	**/
	final enabled : Bool;
};