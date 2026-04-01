package vscode;

/**
	Enumeration of file change types.
**/
@:jsRequire("vscode", "FileChangeType") extern enum abstract FileChangeType(Int) from Int to Int {
	/**
		The contents or metadata of a file have changed.
	**/
	final Changed;
	/**
		A file has been created.
	**/
	final Created;
	/**
		A file has been deleted.
	**/
	final Deleted;
}