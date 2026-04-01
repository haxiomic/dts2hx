package vscode;

/**
	The configuration scope which can be a
	a 'resource' or a languageId or both or
	a '[TextDocument](#TextDocument)' or
	a '[WorkspaceFolder](#WorkspaceFolder)'
**/
typedef ConfigurationScope = ts.AnyOf4<TextDocument, Uri, WorkspaceFolder, {
	@:optional
	var uri : Uri;
	var languageId : String;
}>;