package vscode;

/**
	A custom Debug Adapter Protocol event received from a [debug session](#DebugSession).
**/
typedef DebugSessionCustomEvent = {
	/**
		The [debug session](#DebugSession) for which the custom event was received.
	**/
	final session : DebugSession;
	/**
		Type of event.
	**/
	final event : String;
	/**
		Event specific information.
	**/
	@:optional
	final body : Dynamic;
};