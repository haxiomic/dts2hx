package node.inspector.runtime;
extern typedef GetHeapUsageReturnType = {
	/**
		Used heap size in bytes.
	**/
	var usedSize : Float;
	/**
		Allocated heap size in bytes.
	**/
	var totalSize : Float;
};