package node.inspector.heapprofiler;

typedef GetObjectByHeapObjectIdParameterType = {
	var objectId : String;
	/**
		Symbolic group name that can be used to release multiple objects.
	**/
	@:optional
	var objectGroup : String;
};