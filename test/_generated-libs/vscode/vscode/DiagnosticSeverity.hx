package vscode;

/**
	Represents the severity of diagnostics.
**/
@:jsRequire("vscode", "DiagnosticSeverity") extern enum abstract DiagnosticSeverity(Int) from Int to Int {
	/**
		Something not allowed by the rules of a language or other means.
	**/
	final Error;
	/**
		Something suspicious but allowed.
	**/
	final Warning;
	/**
		Something to inform about but not a problem.
	**/
	final Information;
	/**
		Something to hint to a better way of doing it, like proposing
		a refactoring.
	**/
	final Hint;
}