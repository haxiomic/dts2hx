package vscode;

/**
	The type definition provider defines the contract between extensions and
	the go to type definition feature.
**/
typedef TypeDefinitionProvider = {
	/**
		Provide the type definition of the symbol at the given position and document.
	**/
	function provideTypeDefinition(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<ts.AnyOf3<Location, Array<Location>, Array<LocationLink>>>;
};