package node.inspector.heapprofiler;
extern interface GetObjectByHeapObjectIdParameterType {
	var objectId : String;
	/**
		Symbolic group name that can be used to release multiple objects.
	**/
	@:optional
	var objectGroup : Null<String>;
}