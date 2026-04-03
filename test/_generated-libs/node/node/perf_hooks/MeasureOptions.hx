package node.perf_hooks;

typedef MeasureOptions = {
	/**
		Additional optional detail to include with the mark.
	**/
	@:optional
	var detail : Any;
	/**
		Duration between start and end times.
	**/
	@:optional
	var duration : Float;
	/**
		Timestamp to be used as the end time, or a string identifying a previously recorded mark.
	**/
	@:optional
	var end : ts.AnyOf2<String, Float>;
	/**
		Timestamp to be used as the start time, or a string identifying a previously recorded mark.
	**/
	@:optional
	var start : ts.AnyOf2<String, Float>;
};