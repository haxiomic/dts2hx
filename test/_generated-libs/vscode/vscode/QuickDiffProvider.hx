package vscode;

typedef QuickDiffProvider = {
	/**
		Provide a [uri](#Uri) to the original resource of any given resource uri.
	**/
	@:optional
	function provideOriginalResource(uri:Uri, token:CancellationToken):ProviderResult<Uri>;
};