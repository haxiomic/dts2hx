package node.inspector.runtime;

typedef GetHeapUsageReturnType = {
	/**
		Used heap size in bytes.
	**/
	var usedSize : Float;
	/**
		Allocated heap size in bytes.
	**/
	var totalSize : Float;
};