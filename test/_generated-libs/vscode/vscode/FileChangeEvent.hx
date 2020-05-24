package vscode;

/**
	The event filesystem providers must use to signal a file change.
**/
typedef FileChangeEvent = {
	/**
		The type of change.
	**/
	final type : FileChangeType;
	/**
		The uri of the file that has changed.
	**/
	final uri : Uri;
};