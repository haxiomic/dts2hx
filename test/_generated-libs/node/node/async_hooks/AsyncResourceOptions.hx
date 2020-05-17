package node.async_hooks;

typedef AsyncResourceOptions = {
	/**
		The ID of the execution context that created this async event.
		Default: `executionAsyncId()`
	**/
	@:optional
	var triggerAsyncId : Float;
	/**
		Disables automatic `emitDestroy` when the object is garbage collected.
		This usually does not need to be set (even if `emitDestroy` is called
		manually), unless the resource's `asyncId` is retrieved and the
		sensitive API's `emitDestroy` is called with it.
		Default: `false`
	**/
	@:optional
	var requireManualDestroy : Bool;
};