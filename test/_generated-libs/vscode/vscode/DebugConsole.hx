package vscode;

/**
	Represents the debug console.
**/
typedef DebugConsole = {
	/**
		Append the given value to the debug console.
	**/
	function append(value:String):Void;
	/**
		Append the given value and a line feed character
		to the debug console.
	**/
	function appendLine(value:String):Void;
};