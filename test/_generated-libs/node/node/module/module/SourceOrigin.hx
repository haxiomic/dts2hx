package node.module.module;

typedef SourceOrigin = {
	/**
		The name of the range in the source map, if one was provided
	**/
	var name : Null<String>;
	/**
		The file name of the original source, as reported in the SourceMap
	**/
	var fileName : String;
	/**
		The 1-indexed lineNumber of the corresponding call site in the original source
	**/
	var lineNumber : Float;
	/**
		The 1-indexed columnNumber of the corresponding call site in the original source
	**/
	var columnNumber : Float;
};