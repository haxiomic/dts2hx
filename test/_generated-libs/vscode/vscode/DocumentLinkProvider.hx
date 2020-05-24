package vscode;

/**
	The document link provider defines the contract between extensions and feature of showing
	links in the editor.
**/
typedef DocumentLinkProvider = {
	/**
		Provide links for the given document. Note that the editor ships with a default provider that detects
		`http(s)` and `file` links.
	**/
	function provideDocumentLinks(document:TextDocument, token:CancellationToken):ProviderResult<Array<DocumentLink>>;
	/**
		Given a link fill in its [target](#DocumentLink.target). This method is called when an incomplete
		link is selected in the UI. Providers can implement this method and return incomplete links
		(without target) from the [`provideDocumentLinks`](#DocumentLinkProvider.provideDocumentLinks) method which
		often helps to improve performance.
	**/
	@:optional
	function resolveDocumentLink(link:DocumentLink, token:CancellationToken):ProviderResult<DocumentLink>;
};