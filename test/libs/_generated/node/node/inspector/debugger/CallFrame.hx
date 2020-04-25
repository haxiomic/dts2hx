package node.inspector.debugger;
/**
	JavaScript call frame. Array of call frames form the call stack.
**/
extern interface CallFrame {
	/**
		Call frame identifier. This identifier is only valid while the virtual machine is paused.
	**/
	var callFrameId : String;
	/**
		Name of the JavaScript function called on this call frame.
	**/
	var functionName : String;
	/**
		Location in the source code.
	**/
	@:optional
	var functionLocation : Null<Location>;
	/**
		Location in the source code.
	**/
	var location : Location;
	/**
		JavaScript script name or url.
	**/
	var url : String;
	/**
		Scope chain for this call frame.
	**/
	var scopeChain : std.Array<Scope>;
	/**
		`this` object for this call frame.
	**/
	@:native("this")
	var this_ : node.inspector.runtime.RemoteObject;
	/**
		The value being returned, if the function is at return point.
	**/
	@:optional
	var returnValue : Null<node.inspector.runtime.RemoteObject>;
}