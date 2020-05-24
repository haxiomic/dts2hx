package vscode;

/**
	Additional data for entries of a workspace edit. Supports to label entries and marks entries
	as needing confirmation by the user. The editor groups edits with equal labels into tree nodes,
	for instance all edits labelled with "Changes in Strings" would be a tree node.
**/
typedef WorkspaceEditEntryMetadata = {
	/**
		A flag which indicates that user confirmation is needed.
	**/
	var needsConfirmation : Bool;
	/**
		A human-readable string which is rendered prominent.
	**/
	var label : String;
	/**
		A human-readable string which is rendered less prominent on the same line.
	**/
	@:optional
	var description : String;
	/**
		The icon path or [ThemeIcon](#ThemeIcon) for the edit.
	**/
	@:optional
	var iconPath : ts.AnyOf3<Uri, ThemeIcon, {
		var light : Uri;
		var dark : Uri;
	}>;
};