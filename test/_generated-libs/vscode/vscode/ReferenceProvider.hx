package vscode;

/**
	The reference provider interface defines the contract between extensions and
	the [find references](https://code.visualstudio.com/docs/editor/editingevolved#_peek)-feature.
**/
typedef ReferenceProvider = {
	/**
		Provide a set of project-wide references for the given position and document.
	**/
	function provideReferences(document:TextDocument, position:Position, context:ReferenceContext, token:CancellationToken):ProviderResult<Array<Location>>;
};