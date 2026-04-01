package vscode;

/**
	Enumeration of file types. The types `File` and `Directory` can also be
	a symbolic links, in that case use `FileType.File | FileType.SymbolicLink` and
	`FileType.Directory | FileType.SymbolicLink`.
**/
@:jsRequire("vscode", "FileType") extern enum abstract FileType(Int) from Int to Int {
	/**
		The file type is unknown.
	**/
	var Unknown;
	/**
		A regular file.
	**/
	var File;
	/**
		A directory.
	**/
	var Directory;
	/**
		A symbolic link to a file.
	**/
	var SymbolicLink;
}