package vscode;

/**
	A code lens represents a [command](#Command) that should be shown along with
	source text, like the number of references, a way to run tests, etc.
	
	A code lens is _unresolved_ when no command is associated to it. For performance
	reasons the creation of a code lens and resolving should be done to two stages.
**/
@:jsRequire("vscode", "CodeLens") extern class CodeLens {
	/**
		Creates a new code lens object.
	**/
	function new(range:Range, ?command:Command);
	/**
		The range in which this code lens is valid. Should only span a single line.
	**/
	var range : Range;
	/**
		The command this code lens represents.
	**/
	@:optional
	var command : Command;
	/**
		`true` when there is a command associated.
	**/
	final isResolved : Bool;
	static var prototype : CodeLens;
}