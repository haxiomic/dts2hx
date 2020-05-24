package vscode;

/**
	A type that filesystem providers should use to signal errors.
	
	This class has factory methods for common error-cases, like `FileNotFound` when
	a file or folder doesn't exist, use them like so: `throw vscode.FileSystemError.FileNotFound(someUri);`
**/
@:jsRequire("vscode", "FileSystemError") extern class FileSystemError extends js.lib.Error {
	/**
		Creates a new filesystem error.
	**/
	function new(?messageOrUri:ts.AnyOf2<String, Uri>);
	/**
		A code that identifies this error.
		
		Possible values are names of errors, like [`FileNotFound`](#FileSystemError.FileNotFound),
		or `Unknown` for unspecified errors.
	**/
	final code : String;
	static var prototype : FileSystemError;
	/**
		Create an error to signal that a file or folder wasn't found.
	**/
	static function FileNotFound(?messageOrUri:ts.AnyOf2<String, Uri>):FileSystemError;
	/**
		Create an error to signal that a file or folder already exists, e.g. when
		creating but not overwriting a file.
	**/
	static function FileExists(?messageOrUri:ts.AnyOf2<String, Uri>):FileSystemError;
	/**
		Create an error to signal that a file is not a folder.
	**/
	static function FileNotADirectory(?messageOrUri:ts.AnyOf2<String, Uri>):FileSystemError;
	/**
		Create an error to signal that a file is a folder.
	**/
	static function FileIsADirectory(?messageOrUri:ts.AnyOf2<String, Uri>):FileSystemError;
	/**
		Create an error to signal that an operation lacks required permissions.
	**/
	static function NoPermissions(?messageOrUri:ts.AnyOf2<String, Uri>):FileSystemError;
	/**
		Create an error to signal that the file system is unavailable or too busy to
		complete a request.
	**/
	static function Unavailable(?messageOrUri:ts.AnyOf2<String, Uri>):FileSystemError;
}