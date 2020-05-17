package node.inspector.debugger;

typedef SearchInContentParameterType = {
	/**
		Id of the script to search in.
	**/
	var scriptId : String;
	/**
		String to search for.
	**/
	var query : String;
	/**
		If true, search is case sensitive.
	**/
	@:optional
	var caseSensitive : Bool;
	/**
		If true, treats string parameter as regex.
	**/
	@:optional
	var isRegex : Bool;
};