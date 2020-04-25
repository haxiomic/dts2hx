package node.inspector.debugger;
extern interface SetBlackboxedRangesParameterType {
	/**
		Id of the script.
	**/
	var scriptId : String;
	var positions : std.Array<ScriptPosition>;
}