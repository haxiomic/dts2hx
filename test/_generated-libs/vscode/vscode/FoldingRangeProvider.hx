package vscode;

/**
	The folding range provider interface defines the contract between extensions and
	[Folding](https://code.visualstudio.com/docs/editor/codebasics#_folding) in the editor.
**/
typedef FoldingRangeProvider = {
	/**
		Returns a list of folding ranges or null and undefined if the provider
		does not want to participate or was cancelled.
	**/
	function provideFoldingRanges(document:TextDocument, context:FoldingContext, token:CancellationToken):ProviderResult<Array<FoldingRange>>;
};