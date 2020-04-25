package node.inspector.debugger;
extern interface ContinueToLocationParameterType {
	/**
		Location to continue to.
	**/
	var location : Location;
	@:optional
	var targetCallFrames : Null<String>;
}