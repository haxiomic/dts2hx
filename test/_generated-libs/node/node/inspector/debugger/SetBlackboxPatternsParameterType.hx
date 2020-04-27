package node.inspector.debugger;
extern interface SetBlackboxPatternsParameterType {
	/**
		Array of regexps that will be used to check script url for blackbox state.
	**/
	var patterns : std.Array<String>;
}