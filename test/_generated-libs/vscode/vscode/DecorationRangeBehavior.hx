package vscode;

/**
	Describes the behavior of decorations when typing/editing at their edges.
**/
@:jsRequire("vscode", "DecorationRangeBehavior") extern enum abstract DecorationRangeBehavior(Int) from Int to Int {
	/**
		The decoration's range will widen when edits occur at the start or end.
	**/
	var OpenOpen;
	/**
		The decoration's range will not widen when edits occur at the start of end.
	**/
	var ClosedClosed;
	/**
		The decoration's range will widen when edits occur at the start, but not at the end.
	**/
	var OpenClosed;
	/**
		The decoration's range will widen when edits occur at the end, but not at the start.
	**/
	var ClosedOpen;
}