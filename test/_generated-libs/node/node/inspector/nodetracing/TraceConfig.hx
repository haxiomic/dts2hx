package node.inspector.nodetracing;
extern interface TraceConfig {
	/**
		Controls how the trace buffer stores data.
	**/
	@:optional
	var recordMode : String;
	/**
		Included category filters.
	**/
	var includedCategories : std.Array<String>;
}