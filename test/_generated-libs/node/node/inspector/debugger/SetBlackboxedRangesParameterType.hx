package node.inspector.debugger;

typedef SetBlackboxedRangesParameterType = {
	/**
		Id of the script.
	**/
	var scriptId : String;
	var positions : Array<ScriptPosition>;
};