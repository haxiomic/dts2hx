package vscode;

/**
	A document filter denotes a document by different properties like
	the [language](#TextDocument.languageId), the [scheme](#Uri.scheme) of
	its resource, or a glob-pattern that is applied to the [path](#TextDocument.fileName).
**/
typedef DocumentFilter = {
	/**
		A language id, like `typescript`.
	**/
	@:optional
	var language : String;
	/**
		A Uri [scheme](#Uri.scheme), like `file` or `untitled`.
	**/
	@:optional
	var scheme : String;
	/**
		A [glob pattern](#GlobPattern) that is matched on the absolute path of the document. Use a [relative pattern](#RelativePattern)
		to filter documents to a [workspace folder](#WorkspaceFolder).
	**/
	@:optional
	var pattern : GlobPattern;
};