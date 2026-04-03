package node.v8;

typedef GCProfilerResult = {
	var version : Float;
	var startTime : Float;
	var endTime : Float;
	var statistics : Array<{
		var gcType : String;
		var cost : Float;
		var beforeGC : {
			var heapStatistics : HeapStatistics;
			var heapSpaceStatistics : Array<HeapSpaceStatistics>;
		};
		var afterGC : {
			var heapStatistics : HeapStatistics;
			var heapSpaceStatistics : Array<HeapSpaceStatistics>;
		};
	}>;
};