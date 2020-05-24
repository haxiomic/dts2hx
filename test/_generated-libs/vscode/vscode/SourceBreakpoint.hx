package vscode;

/**
	A breakpoint specified by a source location.
**/
@:jsRequire("vscode", "SourceBreakpoint") extern class SourceBreakpoint extends Breakpoint {
	/**
		Create a new breakpoint for a source location.
	**/
	function new(location:Location, ?enabled:Bool, ?condition:String, ?hitCondition:String, ?logMessage:String);
	/**
		The source and line position of this breakpoint.
	**/
	final location : Location;
	static var prototype : SourceBreakpoint;
}