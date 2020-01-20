package typescript.ts;


/**
Represents an immutable snapshot of a script at a specified time.Once acquired, the
snapshot is observably immutable. i.e. the same calls with the same parameters will return
the same values.

Generated from: test-definitions/typescript/typescript-extended.d.ts:4948:5
**/

typedef IScriptSnapshot = {
	/**
	Gets a portion of the script snapshot specified by [start, end).
	**/
	function getText(start: Float, end: Float): String;
	/**
	Gets the length of this script snapshot.
	**/
	function getLength(): Float;
	/**
	Gets the TextChangeRange that describe how the text changed between this text and
	an older version.  This information is used by the incremental parser to determine
	what sections of the script need to be re-parsed.  'undefined' can be returned if the
	change range cannot be determined.  However, in that case, incremental parsing will
	not happen and the entire document will be re - parsed.
	**/
	function getChangeRange(oldSnapshot: typescript.ts.IScriptSnapshot): Null<typescript.ts.TextChangeRange>;
	/**
	Releases all resources held by this script snapshot
	**/
	@:optional
	function dispose(): Void;
}

