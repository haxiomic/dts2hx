package node.path;
extern interface FormatInputPathObject {
	/**
		The root of the path such as '/' or 'c:\'
	**/
	@:optional
	var root : Null<String>;
	/**
		The full directory path such as '/home/user/dir' or 'c:\path\dir'
	**/
	@:optional
	var dir : Null<String>;
	/**
		The file name including extension (if any) such as 'index.html'
	**/
	@:optional
	var base : Null<String>;
	/**
		The file extension (if any) such as '.html'
	**/
	@:optional
	var ext : Null<String>;
	/**
		The file name without extension (if any) such as 'index'
	**/
	@:optional
	var name : Null<String>;
}