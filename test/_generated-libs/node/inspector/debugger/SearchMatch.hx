package node.inspector.debugger;
/**
	Search match for resource.
**/
extern typedef SearchMatch = {
	/**
		Line number in resource content.
	**/
	var lineNumber : Float;
	/**
		Line with match content.
	**/
	var lineContent : String;
};