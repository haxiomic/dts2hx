package vscode;

/**
	A complex edit that will be applied in one transaction on a TextEditor.
	This holds a description of the edits and if the edits are valid (i.e. no overlapping regions, document was not changed in the meantime, etc.)
	they can be applied on a [document](#TextDocument) associated with a [text editor](#TextEditor).
**/
typedef TextEditorEdit = {
	/**
		Replace a certain text region with a new value.
		You can use \r\n or \n in `value` and they will be normalized to the current [document](#TextDocument).
	**/
	function replace(location:ts.AnyOf3<Range, Position, Selection>, value:String):Void;
	/**
		Insert text at a location.
		You can use \r\n or \n in `value` and they will be normalized to the current [document](#TextDocument).
		Although the equivalent text edit can be made with [replace](#TextEditorEdit.replace), `insert` will produce a different resulting selection (it will get moved).
	**/
	function insert(location:Position, value:String):Void;
	/**
		Delete a certain text region.
	**/
	function delete(location:ts.AnyOf2<Range, Selection>):Void;
	/**
		Set the end of line sequence.
	**/
	function setEndOfLine(endOfLine:EndOfLine):Void;
};