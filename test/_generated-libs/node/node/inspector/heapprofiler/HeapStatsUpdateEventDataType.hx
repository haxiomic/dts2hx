package node.inspector.heapprofiler;

typedef HeapStatsUpdateEventDataType = {
	/**
		An array of triplets. Each triplet describes a fragment. The first integer is the fragment index, the second integer is a total count of objects for the fragment, the third integer is a total size of the objects for the fragment.
	**/
	var statsUpdate : Array<Float>;
};