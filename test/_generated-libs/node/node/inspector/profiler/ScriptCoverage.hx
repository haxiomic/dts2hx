package node.inspector.profiler;

/**
	Coverage data for a JavaScript script.
**/
typedef ScriptCoverage = {
	/**
		JavaScript script id.
	**/
	var scriptId : String;
	/**
		JavaScript script name or url.
	**/
	var url : String;
	/**
		Functions contained in the script that has coverage data.
	**/
	var functions : Array<FunctionCoverage>;
};