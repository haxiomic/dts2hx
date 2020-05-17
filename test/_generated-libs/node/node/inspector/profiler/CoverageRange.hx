package node.inspector.profiler;

/**
	Coverage data for a source range.
**/
typedef CoverageRange = {
	/**
		JavaScript script source offset for the range start.
	**/
	var startOffset : Float;
	/**
		JavaScript script source offset for the range end.
	**/
	var endOffset : Float;
	/**
		Collected execution count of the source range.
	**/
	var count : Float;
};