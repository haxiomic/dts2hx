package vscode;

/**
	Additional information about the context in which a
	[`SignatureHelpProvider`](#SignatureHelpProvider.provideSignatureHelp) was triggered.
**/
typedef SignatureHelpContext = {
	/**
		Action that caused signature help to be triggered.
	**/
	final triggerKind : SignatureHelpTriggerKind;
	/**
		Character that caused signature help to be triggered.
		
		This is `undefined` when signature help is not triggered by typing, such as when manually invoking
		signature help or when moving the cursor.
	**/
	@:optional
	final triggerCharacter : String;
	/**
		`true` if signature help was already showing when it was triggered.
		
		Retriggers occur when the signature help is already active and can be caused by actions such as
		typing a trigger character, a cursor move, or document content changes.
	**/
	final isRetrigger : Bool;
	/**
		The currently active [`SignatureHelp`](#SignatureHelp).
		
		The `activeSignatureHelp` has its [`SignatureHelp.activeSignature`] field updated based on
		the user arrowing through available signatures.
	**/
	@:optional
	final activeSignatureHelp : SignatureHelp;
};