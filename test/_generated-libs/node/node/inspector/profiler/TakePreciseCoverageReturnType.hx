package node.inspector.profiler;
extern interface TakePreciseCoverageReturnType {
	/**
		Coverage data for the current isolate.
	**/
	var result : std.Array<ScriptCoverage>;
}