package node.perf_hooks;

typedef CreateHistogramOptions = {
	/**
		The minimum recordable value. Must be an integer value greater than 0.
	**/
	@:optional
	var lowest : ts.AnyOf2<Float, ts.BigInt>;
	/**
		The maximum recordable value. Must be an integer value greater than min.
	**/
	@:optional
	var highest : ts.AnyOf2<Float, ts.BigInt>;
	/**
		The number of accuracy digits. Must be a number between 1 and 5.
	**/
	@:optional
	var figures : Float;
};