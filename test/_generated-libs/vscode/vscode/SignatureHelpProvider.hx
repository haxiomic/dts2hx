package vscode;

/**
	The signature help provider interface defines the contract between extensions and
	the [parameter hints](https://code.visualstudio.com/docs/editor/intellisense)-feature.
**/
typedef SignatureHelpProvider = {
	/**
		Provide help for the signature at the given position and document.
	**/
	function provideSignatureHelp(document:TextDocument, position:Position, token:CancellationToken, context:SignatureHelpContext):ProviderResult<SignatureHelp>;
};