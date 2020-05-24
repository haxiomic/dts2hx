package vscode;

/**
	Represents a handle to a set of decorations
	sharing the same [styling options](#DecorationRenderOptions) in a [text editor](#TextEditor).
	
	To get an instance of a `TextEditorDecorationType` use
	[createTextEditorDecorationType](#window.createTextEditorDecorationType).
**/
typedef TextEditorDecorationType = {
	/**
		Internal representation of the handle.
	**/
	final key : String;
	/**
		Remove this decoration type and all decorations on all text editors using it.
	**/
	function dispose():Void;
};