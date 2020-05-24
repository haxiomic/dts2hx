package vscode;

/**
	The document highlight provider interface defines the contract between extensions and
	the word-highlight-feature.
**/
typedef DocumentHighlightProvider = {
	/**
		Provide a set of document highlights, like all occurrences of a variable or
		all exit-points of a function.
	**/
	function provideDocumentHighlights(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<Array<DocumentHighlight>>;
};