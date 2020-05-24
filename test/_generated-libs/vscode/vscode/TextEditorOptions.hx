package vscode;

/**
	Represents a [text editor](#TextEditor)'s [options](#TextEditor.options).
**/
typedef TextEditorOptions = {
	/**
		The size in spaces a tab takes. This is used for two purposes:
		  - the rendering width of a tab character;
		  - the number of spaces to insert when [insertSpaces](#TextEditorOptions.insertSpaces) is true.
		
		When getting a text editor's options, this property will always be a number (resolved).
		When setting a text editor's options, this property is optional and it can be a number or `"auto"`.
	**/
	@:optional
	var tabSize : ts.AnyOf2<String, Float>;
	/**
		When pressing Tab insert [n](#TextEditorOptions.tabSize) spaces.
		When getting a text editor's options, this property will always be a boolean (resolved).
		When setting a text editor's options, this property is optional and it can be a boolean or `"auto"`.
	**/
	@:optional
	var insertSpaces : ts.AnyOf2<String, Bool>;
	/**
		The rendering style of the cursor in this editor.
		When getting a text editor's options, this property will always be present.
		When setting a text editor's options, this property is optional.
	**/
	@:optional
	var cursorStyle : TextEditorCursorStyle;
	/**
		Render relative line numbers w.r.t. the current line number.
		When getting a text editor's options, this property will always be present.
		When setting a text editor's options, this property is optional.
	**/
	@:optional
	var lineNumbers : TextEditorLineNumbersStyle;
};