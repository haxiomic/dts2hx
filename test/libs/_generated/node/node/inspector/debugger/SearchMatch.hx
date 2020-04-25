package node.inspector.debugger;
/**
	Search match for resource.
**/
extern interface SearchMatch {
	/**
		Line number in resource content.
	**/
	var lineNumber : Float;
	/**
		Line with match content.
	**/
	var lineContent : String;
}