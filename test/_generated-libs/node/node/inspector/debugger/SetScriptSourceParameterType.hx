package node.inspector.debugger;

typedef SetScriptSourceParameterType = {
	/**
		Id of the script to edit.
	**/
	var scriptId : String;
	/**
		New content of the script.
	**/
	var scriptSource : String;
	/**
		If true the change will not actually be applied. Dry run may be used to get result description without actually modifying the code.
	**/
	@:optional
	var dryRun : Bool;
};