package vscode;

/**
	Represents an outgoing call, e.g. calling a getter from a method or a method from a constructor etc.
**/
@:jsRequire("vscode", "CallHierarchyOutgoingCall") extern class CallHierarchyOutgoingCall {
	/**
		Create a new call object.
	**/
	function new(item:CallHierarchyItem, fromRanges:Array<Range>);
	/**
		The item that is called.
	**/
	var to : CallHierarchyItem;
	/**
		The range at which this item is called. This is the range relative to the caller, e.g the item
		passed to [`provideCallHierarchyOutgoingCalls`](#CallHierarchyProvider.provideCallHierarchyOutgoingCalls)
		and not [`this.to`](#CallHierarchyOutgoingCall.to).
	**/
	var fromRanges : Array<Range>;
	static var prototype : CallHierarchyOutgoingCall;
}