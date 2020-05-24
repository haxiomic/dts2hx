package vscode;

/**
	Options for [starting a debug session](#debug.startDebugging).
**/
typedef DebugSessionOptions = {
	/**
		When specified the newly created debug session is registered as a "child" session of this
		"parent" debug session.
	**/
	@:optional
	var parentSession : DebugSession;
	/**
		Controls whether this session should have a separate debug console or share it
		with the parent session. Has no effect for sessions which do not have a parent session.
		Defaults to Separate.
	**/
	@:optional
	var consoleMode : DebugConsoleMode;
};