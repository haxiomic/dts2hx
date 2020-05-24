package vscode;

/**
	The theme-aware decorations for a
	[source control resource state](#SourceControlResourceState).
**/
typedef SourceControlResourceThemableDecorations = {
	/**
		The icon path for a specific
		[source control resource state](#SourceControlResourceState).
	**/
	@:optional
	final iconPath : ts.AnyOf2<String, Uri>;
};