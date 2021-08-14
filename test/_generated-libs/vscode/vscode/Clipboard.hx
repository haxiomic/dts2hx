package vscode;

/**
	The clipboard provides read and write access to the system's clipboard.
**/
typedef Clipboard = {
	/**
		Read the current clipboard contents as text.
	**/
	function readText():global.Thenable<String>;
	/**
		Writes text into the clipboard.
	**/
	function writeText(value:String):global.Thenable<ts.Undefined>;
};