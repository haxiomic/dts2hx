package node.inspector.profiler;
extern interface ConsoleProfileFinishedEventDataType {
	var id : String;
	/**
		Location of console.profileEnd().
	**/
	var location : node.inspector.debugger.Location;
	var profile : Profile;
	/**
		Profile title passed as an argument to console.profile().
	**/
	@:optional
	var title : Null<String>;
}