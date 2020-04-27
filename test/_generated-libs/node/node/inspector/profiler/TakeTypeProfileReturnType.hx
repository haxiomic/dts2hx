package node.inspector.profiler;
extern interface TakeTypeProfileReturnType {
	/**
		Type profile for all scripts since startTypeProfile() was turned on.
	**/
	var result : std.Array<ScriptTypeProfile>;
}