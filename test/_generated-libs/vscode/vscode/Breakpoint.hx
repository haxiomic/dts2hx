package vscode;

/**
	The base class of all breakpoint types.
**/
@:jsRequire("vscode", "Breakpoint") extern class Breakpoint {
	private function new(?enabled:Bool, ?condition:String, ?hitCondition:String, ?logMessage:String);
	/**
		The unique ID of the breakpoint.
	**/
	final id : String;
	/**
		Is breakpoint enabled.
	**/
	final enabled : Bool;
	/**
		An optional expression for conditional breakpoints.
	**/
	@:optional
	final condition : String;
	/**
		An optional expression that controls how many hits of the breakpoint are ignored.
	**/
	@:optional
	final hitCondition : String;
	/**
		An optional message that gets logged when this breakpoint is hit. Embedded expressions within {} are interpolated by the debug adapter.
	**/
	@:optional
	final logMessage : String;
	static var prototype : Breakpoint;
}