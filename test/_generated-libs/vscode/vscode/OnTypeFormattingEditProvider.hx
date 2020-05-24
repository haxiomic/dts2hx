package vscode;

/**
	The document formatting provider interface defines the contract between extensions and
	the formatting-feature.
**/
typedef OnTypeFormattingEditProvider = {
	/**
		Provide formatting edits after a character has been typed.
		
		The given position and character should hint to the provider
		what range the position to expand to, like find the matching `{`
		when `}` has been entered.
	**/
	function provideOnTypeFormattingEdits(document:TextDocument, position:Position, ch:String, options:FormattingOptions, token:CancellationToken):ProviderResult<Array<TextEdit>>;
};