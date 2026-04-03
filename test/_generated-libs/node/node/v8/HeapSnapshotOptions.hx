package node.v8;

typedef HeapSnapshotOptions = {
	/**
		If true, expose internals in the heap snapshot.
	**/
	@:optional
	var exposeInternals : Bool;
	/**
		If true, expose numeric values in artificial fields.
	**/
	@:optional
	var exposeNumericValues : Bool;
};