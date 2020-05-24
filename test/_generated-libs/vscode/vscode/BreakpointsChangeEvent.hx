package vscode;

/**
	An event describing the changes to the set of [breakpoints](#Breakpoint).
**/
typedef BreakpointsChangeEvent = {
	/**
		Added breakpoints.
	**/
	final added : haxe.ds.ReadOnlyArray<Breakpoint>;
	/**
		Removed breakpoints.
	**/
	final removed : haxe.ds.ReadOnlyArray<Breakpoint>;
	/**
		Changed breakpoints.
	**/
	final changed : haxe.ds.ReadOnlyArray<Breakpoint>;
};