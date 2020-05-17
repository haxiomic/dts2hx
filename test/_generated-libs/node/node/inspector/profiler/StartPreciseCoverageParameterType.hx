package node.inspector.profiler;

typedef StartPreciseCoverageParameterType = {
	/**
		Collect accurate call counts beyond simple 'covered' or 'not covered'.
	**/
	@:optional
	var callCount : Bool;
	/**
		Collect block-based coverage.
	**/
	@:optional
	var detailed : Bool;
};