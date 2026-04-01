package vscode;

/**
	An individual terminal instance within the integrated terminal.
**/
typedef Terminal = {
	/**
		The name of the terminal.
	**/
	final name : String;
	/**
		The process ID of the shell process.
	**/
	final processId : global.Thenable<Null<Float>>;
	/**
		The object used to initialize the terminal, this is useful for example to detecting the
		shell type of when the terminal was not launched by this extension or for detecting what
		folder the shell was launched in.
	**/
	final creationOptions : {
		/**
			A human-readable string which will be used to represent the terminal in the UI.
		**/
		@:optional
		final name : String;
	};
	/**
		The exit status of the terminal, this will be undefined while the terminal is active.
		
		**Example:** Show a notification with the exit code when the terminal exits with a
		non-zero exit code.
		```typescript
		window.onDidCloseTerminal(t => {
		  if (t.exitStatus && t.exitStatus.code) {
		      vscode.window.showInformationMessage(`Exit code: ${t.exitStatus.code}`);
		  }
		});
		```
	**/
	final exitStatus : Null<TerminalExitStatus>;
	/**
		Send text to the terminal. The text is written to the stdin of the underlying pty process
		(shell) of the terminal.
	**/
	function sendText(text:String, ?addNewLine:Bool):Void;
	/**
		Show the terminal panel and reveal this terminal in the UI.
	**/
	function show(?preserveFocus:Bool):Void;
	/**
		Hide the terminal panel if this terminal is currently showing.
	**/
	function hide():Void;
	/**
		Dispose and free associated resources.
	**/
	function dispose():Void;
};