package vscode;

/**
	The event that is fired when diagnostics change.
**/
typedef DiagnosticChangeEvent = {
	/**
		An array of resources for which diagnostics have changed.
	**/
	final uris : haxe.ds.ReadOnlyArray<Uri>;
};