package vscode;

/**
	A debug adapter that implements the Debug Adapter Protocol can be registered with VS Code if it implements the DebugAdapter interface.
**/
typedef DebugAdapter = {
	/**
		An event which fires after the debug adapter has sent a Debug Adapter Protocol message to VS Code.
		Messages can be requests, responses, or events.
	**/
	function onDidSendMessage(listener:(e:DebugProtocolMessage) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Handle a Debug Adapter Protocol message.
		Messages can be requests, responses, or events.
		Results or errors are returned via onSendMessage events.
	**/
	function handleMessage(message:DebugProtocolMessage):Void;
	/**
		Dispose this object.
	**/
	function dispose():Dynamic;
};