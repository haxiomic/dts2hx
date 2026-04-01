package vscode;

/**
	Describes the behavior of decorations when typing/editing at their edges.
**/
@:jsRequire("vscode", "DecorationRangeBehavior") extern enum abstract DecorationRangeBehavior(Int) from Int to Int {
	/**
		The decoration's range will widen when edits occur at the start or end.
	**/
	final OpenOpen;
	/**
		The decoration's range will not widen when edits occur at the start of end.
	**/
	final ClosedClosed;
	/**
		The decoration's range will widen when edits occur at the start, but not at the end.
	**/
	final OpenClosed;
	/**
		The decoration's range will widen when edits occur at the end, but not at the start.
	**/
	final ClosedOpen;
}