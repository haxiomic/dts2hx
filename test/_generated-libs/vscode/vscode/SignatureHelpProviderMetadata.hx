package vscode;

/**
	Metadata about a registered [`SignatureHelpProvider`](#SignatureHelpProvider).
**/
typedef SignatureHelpProviderMetadata = {
	/**
		List of characters that trigger signature help.
	**/
	final triggerCharacters : haxe.ds.ReadOnlyArray<String>;
	/**
		List of characters that re-trigger signature help.
		
		These trigger characters are only active when signature help is already showing. All trigger characters
		are also counted as re-trigger characters.
	**/
	final retriggerCharacters : haxe.ds.ReadOnlyArray<String>;
};