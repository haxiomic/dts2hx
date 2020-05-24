package vscode;

/**
	Represents reasons why a text document is saved.
**/
@:jsRequire("vscode", "TextDocumentSaveReason") @:enum extern abstract TextDocumentSaveReason(Int) from Int to Int {
	/**
		Manually triggered, e.g. by the user pressing save, by starting debugging,
		or by an API call.
	**/
	var Manual;
	/**
		Automatic after a delay.
	**/
	var AfterDelay;
	/**
		When the editor lost focus.
	**/
	var FocusOut;
}