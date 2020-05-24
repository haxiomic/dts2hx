package vscode;

/**
	A breakpoint specified by a function name.
**/
@:jsRequire("vscode", "FunctionBreakpoint") extern class FunctionBreakpoint extends Breakpoint {
	/**
		Create a new function breakpoint.
	**/
	function new(functionName:String, ?enabled:Bool, ?condition:String, ?hitCondition:String, ?logMessage:String);
	/**
		The name of the function to which this breakpoint is attached.
	**/
	final functionName : String;
	static var prototype : FunctionBreakpoint;
}