package node.inspector.heapprofiler;
extern interface AddInspectedHeapObjectParameterType {
	/**
		Heap snapshot object id to be accessible by means of $x command line API.
	**/
	var heapObjectId : String;
}