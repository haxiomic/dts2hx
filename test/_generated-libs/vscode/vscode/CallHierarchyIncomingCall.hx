package vscode;

/**
	Represents an incoming call, e.g. a caller of a method or constructor.
**/
@:jsRequire("vscode", "CallHierarchyIncomingCall") extern class CallHierarchyIncomingCall {
	/**
		Create a new call object.
	**/
	function new(item:CallHierarchyItem, fromRanges:Array<Range>);
	/**
		The item that makes the call.
	**/
	var from : CallHierarchyItem;
	/**
		The range at which at which the calls appears. This is relative to the caller
		denoted by [`this.from`](#CallHierarchyIncomingCall.from).
	**/
	var fromRanges : Array<Range>;
	static var prototype : CallHierarchyIncomingCall;
}