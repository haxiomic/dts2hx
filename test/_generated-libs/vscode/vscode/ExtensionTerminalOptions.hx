package vscode;

/**
	Value-object describing what options a virtual process terminal should use.
**/
typedef ExtensionTerminalOptions = {
	/**
		A human-readable string which will be used to represent the terminal in the UI.
	**/
	var name : String;
	/**
		An implementation of [Pseudoterminal](#Pseudoterminal) that allows an extension to
		control a terminal.
	**/
	var pty : Pseudoterminal;
};