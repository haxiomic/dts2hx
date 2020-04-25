package node.inspector.heapprofiler;
extern interface TakeHeapSnapshotParameterType {
	/**
		If true 'reportHeapSnapshotProgress' events will be generated while snapshot is being taken.
	**/
	@:optional
	var reportProgress : Null<Bool>;
}