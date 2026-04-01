package vscode;

/**
	Provider for text based custom editors.
	
	Text based custom editors use a [`TextDocument`](#TextDocument) as their data model. This considerably simplifies
	implementing a custom editor as it allows VS Code to handle many common operations such as
	undo and backup. The provider is responsible for synchronizing text changes between the webview and the `TextDocument`.
**/
typedef CustomTextEditorProvider = {
	/**
		Resolve a custom editor for a given text resource.
		
		This is called when a user first opens a resource for a `CustomTextEditorProvider`, or if they reopen an
		existing editor using this `CustomTextEditorProvider`.
		
		To resolve a custom editor, the provider must fill in its initial html content and hook up all
		the event listeners it is interested it. The provider can also hold onto the `WebviewPanel` to use later,
		for example in a command. See [`WebviewPanel`](#WebviewPanel) for additional details.
	**/
	function resolveCustomTextEditor(document:TextDocument, webviewPanel:WebviewPanel, token:CancellationToken):global.Thenable<ts.Undefined>;
};