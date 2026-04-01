package vscode;

/**
	Debug console mode used by debug session, see [options](#DebugSessionOptions).
**/
@:jsRequire("vscode", "DebugConsoleMode") extern enum abstract DebugConsoleMode(Int) from Int to Int {
	/**
		Debug session should have a separate debug console.
	**/
	var Separate;
	/**
		Debug session should share debug console with its parent session.
		This value has no effect for sessions which do not have a parent session.
	**/
	var MergeWithParent;
}