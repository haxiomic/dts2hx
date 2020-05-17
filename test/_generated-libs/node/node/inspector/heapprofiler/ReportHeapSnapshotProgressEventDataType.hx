package node.inspector.heapprofiler;

typedef ReportHeapSnapshotProgressEventDataType = {
	var done : Float;
	var total : Float;
	@:optional
	var finished : Bool;
};