package vscode;

/**
	An event describing the change in Configuration
**/
typedef ConfigurationChangeEvent = {
	/**
		Returns `true` if the given section is affected in the provided scope.
	**/
	function affectsConfiguration(section:String, ?scope:ts.AnyOf4<WorkspaceFolder, Uri, TextDocument, { @:optional var uri : Uri; var languageId : String; }>):Bool;
};