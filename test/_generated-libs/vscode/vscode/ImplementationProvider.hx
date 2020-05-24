package vscode;

/**
	The implementation provider interface defines the contract between extensions and
	the go to implementation feature.
**/
typedef ImplementationProvider = {
	/**
		Provide the implementations of the symbol at the given position and document.
	**/
	function provideImplementation(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<ts.AnyOf3<Location, Array<Location>, Array<LocationLink>>>;
};