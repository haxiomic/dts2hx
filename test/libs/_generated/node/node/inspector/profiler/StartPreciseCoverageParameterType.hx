package node.inspector.profiler;
extern interface StartPreciseCoverageParameterType {
	/**
		Collect accurate call counts beyond simple 'covered' or 'not covered'.
	**/
	@:optional
	var callCount : Null<Bool>;
	/**
		Collect block-based coverage.
	**/
	@:optional
	var detailed : Null<Bool>;
}