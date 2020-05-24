package vscode;

/**
	An event that is fired after files are deleted.
**/
typedef FileDeleteEvent = {
	/**
		The files that got deleted.
	**/
	final files : haxe.ds.ReadOnlyArray<Uri>;
};