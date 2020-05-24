package vscode;

/**
	Metadata about a document symbol provider.
**/
typedef DocumentSymbolProviderMetadata = {
	/**
		A human-readable string that is shown when multiple outlines trees show for one document.
	**/
	@:optional
	var label : String;
};