package vscode;

/**
	The definition provider interface defines the contract between extensions and
	the [go to definition](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-definition)
	and peek definition features.
**/
typedef DefinitionProvider = {
	/**
		Provide the definition of the symbol at the given position and document.
	**/
	function provideDefinition(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<ts.AnyOf3<Location, Array<Location>, Array<LocationLink>>>;
};