package vscode;

/**
	A Debug Adapter Tracker is a means to track the communication between VS Code and a Debug Adapter.
**/
typedef DebugAdapterTracker = {
	/**
		A session with the debug adapter is about to be started.
	**/
	@:optional
	function onWillStartSession():Void;
	/**
		The debug adapter is about to receive a Debug Adapter Protocol message from VS Code.
	**/
	@:optional
	function onWillReceiveMessage(message:Dynamic):Void;
	/**
		The debug adapter has sent a Debug Adapter Protocol message to VS Code.
	**/
	@:optional
	function onDidSendMessage(message:Dynamic):Void;
	/**
		The debug adapter session is about to be stopped.
	**/
	@:optional
	function onWillStopSession():Void;
	/**
		An error with the debug adapter has occurred.
	**/
	@:optional
	function onError(error:js.lib.Error):Void;
	/**
		The debug adapter has exited with the given exit code or signal.
	**/
	@:optional
	function onExit(code:Null<Float>, signal:Null<String>):Void;
};