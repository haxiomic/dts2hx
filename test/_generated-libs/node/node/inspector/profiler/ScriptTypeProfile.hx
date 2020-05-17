package node.inspector.profiler;

/**
	Type profile data collected during runtime for a JavaScript script.
**/
typedef ScriptTypeProfile = {
	/**
		JavaScript script id.
	**/
	var scriptId : String;
	/**
		JavaScript script name or url.
	**/
	var url : String;
	/**
		Type profile entries for parameters and return values of the functions in the script.
	**/
	var entries : Array<TypeProfileEntry>;
};