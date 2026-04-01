package vscode;

/**
	Represents the severity of diagnostics.
**/
@:jsRequire("vscode", "DiagnosticSeverity") extern enum abstract DiagnosticSeverity(Int) from Int to Int {
	/**
		Something not allowed by the rules of a language or other means.
	**/
	var Error;
	/**
		Something suspicious but allowed.
	**/
	var Warning;
	/**
		Something to inform about but not a problem.
	**/
	var Information;
	/**
		Something to hint to a better way of doing it, like proposing
		a refactoring.
	**/
	var Hint;
}