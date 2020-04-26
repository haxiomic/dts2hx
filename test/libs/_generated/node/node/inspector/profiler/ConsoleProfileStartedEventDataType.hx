package node.inspector.profiler;
extern interface ConsoleProfileStartedEventDataType {
	var id : String;
	/**
		Location of console.profile().
	**/
	var location : node.inspector.debugger.Location;
	/**
		Profile title passed as an argument to console.profile().
	**/
	@:optional
	var title : String;
}