package vscode;

/**
	Defines a generalized way of reporting progress updates.
**/
typedef Progress<T> = {
	/**
		Report a progress update.
	**/
	function report(value:T):Void;
};