package vscode;

/**
	A debug adapter descriptor for an inline implementation.
**/
@:jsRequire("vscode", "DebugAdapterInlineImplementation") extern class DebugAdapterInlineImplementation {
	/**
		Create a descriptor for an inline implementation of a debug adapter.
	**/
	function new(implementation:DebugAdapter);
	static var prototype : DebugAdapterInlineImplementation;
}