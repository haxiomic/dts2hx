package node.inspector.heapprofiler;

typedef TakeHeapSnapshotParameterType = {
	/**
		If true 'reportHeapSnapshotProgress' events will be generated while snapshot is being taken.
	**/
	@:optional
	var reportProgress : Bool;
};