package vscode;

/**
	How a [`SignatureHelpProvider`](#SignatureHelpProvider) was triggered.
**/
@:jsRequire("vscode", "SignatureHelpTriggerKind") extern enum abstract SignatureHelpTriggerKind(Int) from Int to Int {
	/**
		Signature help was invoked manually by the user or by a command.
	**/
	var Invoke;
	/**
		Signature help was triggered by a trigger character.
	**/
	var TriggerCharacter;
	/**
		Signature help was triggered by the cursor moving or by the document content changing.
	**/
	var ContentChange;
}