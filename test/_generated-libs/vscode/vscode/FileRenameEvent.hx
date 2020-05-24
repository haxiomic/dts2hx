package vscode;

/**
	An event that is fired after files are renamed.
**/
typedef FileRenameEvent = {
	/**
		The files that got renamed.
	**/
	final files : haxe.ds.ReadOnlyArray<{
		var oldUri : Uri;
		var newUri : Uri;
	}>;
};