package node.inspector.debugger;

typedef ContinueToLocationParameterType = {
	/**
		Location to continue to.
	**/
	var location : Location;
	@:optional
	var targetCallFrames : String;
};