package vscode;

/**
	Contains additional information about the context in which
	[completion provider](#CompletionItemProvider.provideCompletionItems) is triggered.
**/
typedef CompletionContext = {
	/**
		How the completion was triggered.
	**/
	final triggerKind : CompletionTriggerKind;
	/**
		Character that triggered the completion item provider.
		
		`undefined` if provider was not triggered by a character.
		
		The trigger character is already in the document when the completion provider is triggered.
	**/
	@:optional
	final triggerCharacter : String;
};