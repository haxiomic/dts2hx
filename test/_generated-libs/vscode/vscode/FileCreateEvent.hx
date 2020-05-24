package vscode;

/**
	An event that is fired after files are created.
**/
typedef FileCreateEvent = {
	/**
		The files that got created.
	**/
	final files : haxe.ds.ReadOnlyArray<Uri>;
};