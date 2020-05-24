package vscode;

/**
	The decorations for a [source control resource state](#SourceControlResourceState).
	Can be independently specified for light and dark themes.
**/
typedef SourceControlResourceDecorations = {
	/**
		Whether the [source control resource state](#SourceControlResourceState) should
		be striked-through in the UI.
	**/
	@:optional
	final strikeThrough : Bool;
	/**
		Whether the [source control resource state](#SourceControlResourceState) should
		be faded in the UI.
	**/
	@:optional
	final faded : Bool;
	/**
		The title for a specific
		[source control resource state](#SourceControlResourceState).
	**/
	@:optional
	final tooltip : String;
	/**
		The light theme decorations.
	**/
	@:optional
	final light : SourceControlResourceThemableDecorations;
	/**
		The dark theme decorations.
	**/
	@:optional
	final dark : SourceControlResourceThemableDecorations;
	/**
		The icon path for a specific
		[source control resource state](#SourceControlResourceState).
	**/
	@:optional
	final iconPath : ts.AnyOf2<String, Uri>;
};