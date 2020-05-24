package vscode;

/**
	Configuration for a debug session.
**/
typedef DebugConfiguration = {
	/**
		The type of the debug session.
	**/
	var type : String;
	/**
		The name of the debug session.
	**/
	var name : String;
	/**
		The request type of the debug session.
	**/
	var request : String;
};