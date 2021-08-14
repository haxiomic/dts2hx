package vscode;

/**
	A uri handler is responsible for handling system-wide [uris](#Uri).
**/
typedef UriHandler = {
	/**
		Handle the provided system-wide [uri](#Uri).
	**/
	function handleUri(uri:Uri):ProviderResult<ts.Undefined>;
};