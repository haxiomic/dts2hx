package node.inspector.profiler;
extern interface GetBestEffortCoverageReturnType {
	/**
		Coverage data for the current isolate.
	**/
	var result : std.Array<ScriptCoverage>;
}