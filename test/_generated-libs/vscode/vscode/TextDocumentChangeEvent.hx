package vscode;

/**
	An event describing a transactional [document](#TextDocument) change.
**/
typedef TextDocumentChangeEvent = {
	/**
		The affected document.
	**/
	final document : TextDocument;
	/**
		An array of content changes.
	**/
	final contentChanges : haxe.ds.ReadOnlyArray<TextDocumentContentChangeEvent>;
};