package node.inspector.heapprofiler;

/**
	Sampling Heap Profile node. Holds callsite information, allocation statistics and child nodes.
**/
typedef SamplingHeapProfileNode = {
	/**
		Function location.
	**/
	var callFrame : node.inspector.runtime.CallFrame;
	/**
		Allocations size in bytes for the node excluding children.
	**/
	var selfSize : Float;
	/**
		Child nodes.
	**/
	var children : Array<SamplingHeapProfileNode>;
};