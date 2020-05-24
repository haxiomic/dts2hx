package vscode;

/**
	Represents a related message and source code location for a diagnostic. This should be
	used to point to code locations that cause or related to a diagnostics, e.g. when duplicating
	a symbol in a scope.
**/
@:jsRequire("vscode", "DiagnosticRelatedInformation") extern class DiagnosticRelatedInformation {
	/**
		Creates a new related diagnostic information object.
	**/
	function new(location:Location, message:String);
	/**
		The location of this related diagnostic information.
	**/
	var location : Location;
	/**
		The message of this related diagnostic information.
	**/
	var message : String;
	static var prototype : DiagnosticRelatedInformation;
}