package vscode;

/**
	The document color provider defines the contract between extensions and feature of
	picking and modifying colors in the editor.
**/
typedef DocumentColorProvider = {
	/**
		Provide colors for the given document.
	**/
	function provideDocumentColors(document:TextDocument, token:CancellationToken):ProviderResult<Array<ColorInformation>>;
	/**
		Provide [representations](#ColorPresentation) for a color.
	**/
	function provideColorPresentations(color:Color, context:{ var document : TextDocument; var range : Range; }, token:CancellationToken):ProviderResult<Array<ColorPresentation>>;
};