package node.inspector.profiler;

/**
	Specifies a number of samples attributed to a certain source position.
**/
typedef PositionTickInfo = {
	/**
		Source line number (1-based).
	**/
	var line : Float;
	/**
		Number of samples attributed to the source line.
	**/
	var ticks : Float;
};