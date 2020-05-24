package vscode;

/**
	The document formatting provider interface defines the contract between extensions and
	the formatting-feature.
**/
typedef DocumentRangeFormattingEditProvider = {
	/**
		Provide formatting edits for a range in a document.
		
		The given range is a hint and providers can decide to format a smaller
		or larger range. Often this is done by adjusting the start and end
		of the range to full syntax nodes.
	**/
	function provideDocumentRangeFormattingEdits(document:TextDocument, range:Range, options:FormattingOptions, token:CancellationToken):ProviderResult<Array<TextEdit>>;
};