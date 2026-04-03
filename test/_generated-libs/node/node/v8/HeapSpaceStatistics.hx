package node.v8;

typedef HeapSpaceStatistics = {
	var spaceName : String;
	var spaceSize : Float;
	var spaceUsedSize : Float;
	var spaceAvailableSize : Float;
	var physicalSpaceSize : Float;
};