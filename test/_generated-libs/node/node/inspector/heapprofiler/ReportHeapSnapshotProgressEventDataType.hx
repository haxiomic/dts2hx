package node.inspector.heapprofiler;
extern interface ReportHeapSnapshotProgressEventDataType {
	var done : Float;
	var total : Float;
	@:optional
	var finished : Bool;
}