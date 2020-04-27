package node.inspector.profiler;
/**
	Coverage data for a JavaScript function.
**/
extern typedef FunctionCoverage = { /**
		JavaScript function name.
	**/
	var functionName : String; /**
		Source ranges inside the function with coverage data.
	**/
	var ranges : std.Array<CoverageRange>; /**
		Whether coverage data for this function has block granularity.
	**/
	var isBlockCoverage : Bool; };