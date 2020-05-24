package vscode;

/**
	Represents an event describing the change in a [text editor's selections](#TextEditor.selections).
**/
typedef TextEditorSelectionChangeEvent = {
	/**
		The [text editor](#TextEditor) for which the selections have changed.
	**/
	final textEditor : TextEditor;
	/**
		The new value for the [text editor's selections](#TextEditor.selections).
	**/
	final selections : haxe.ds.ReadOnlyArray<Selection>;
	/**
		The [change kind](#TextEditorSelectionChangeKind) which has triggered this
		event. Can be `undefined`.
	**/
	@:optional
	final kind : TextEditorSelectionChangeKind;
};