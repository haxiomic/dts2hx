package node.v8;

typedef HeapStatistics = {
	var totalHeapSize : Float;
	var totalHeapSizeExecutable : Float;
	var totalPhysicalSize : Float;
	var totalAvailableSize : Float;
	var totalGlobalHandlesSize : Float;
	var usedGlobalHandlesSize : Float;
	var usedHeapSize : Float;
	var heapSizeLimit : Float;
	var mallocedMemory : Float;
	var externalMemory : Float;
	var peakMallocedMemory : Float;
};