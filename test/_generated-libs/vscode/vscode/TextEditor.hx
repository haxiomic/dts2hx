package vscode;

/**
	Represents an editor that is attached to a [document](#TextDocument).
**/
typedef TextEditor = {
	/**
		The document associated with this text editor. The document will be the same for the entire lifetime of this text editor.
	**/
	final document : TextDocument;
	/**
		The primary selection on this text editor. Shorthand for `TextEditor.selections[0]`.
	**/
	var selection : Selection;
	/**
		The selections in this text editor. The primary selection is always at index 0.
	**/
	var selections : Array<Selection>;
	/**
		The current visible ranges in the editor (vertically).
		This accounts only for vertical scrolling, and not for horizontal scrolling.
	**/
	final visibleRanges : Array<Range>;
	/**
		Text editor options.
	**/
	var options : TextEditorOptions;
	/**
		The column in which this editor shows. Will be `undefined` in case this
		isn't one of the main editors, e.g. an embedded editor, or when the editor
		column is larger than three.
	**/
	@:optional
	var viewColumn : ViewColumn;
	/**
		Perform an edit on the document associated with this text editor.
		
		The given callback-function is invoked with an [edit-builder](#TextEditorEdit) which must
		be used to make edits. Note that the edit-builder is only valid while the
		callback executes.
	**/
	function edit(callback:(editBuilder:TextEditorEdit) -> Void, ?options:{ var undoStopBefore : Bool; var undoStopAfter : Bool; }):global.Thenable<Bool>;
	/**
		Insert a [snippet](#SnippetString) and put the editor into snippet mode. "Snippet mode"
		means the editor adds placeholders and additional cursors so that the user can complete
		or accept the snippet.
	**/
	function insertSnippet(snippet:SnippetString, ?location:ts.AnyOf4<Range, Position, haxe.ds.ReadOnlyArray<Range>, haxe.ds.ReadOnlyArray<Position>>, ?options:{ var undoStopBefore : Bool; var undoStopAfter : Bool; }):global.Thenable<Bool>;
	/**
		Adds a set of decorations to the text editor. If a set of decorations already exists with
		the given [decoration type](#TextEditorDecorationType), they will be replaced.
	**/
	function setDecorations(decorationType:TextEditorDecorationType, rangesOrOptions:ts.AnyOf2<Array<Range>, Array<DecorationOptions>>):Void;
	/**
		Scroll as indicated by `revealType` in order to reveal the given range.
	**/
	function revealRange(range:Range, ?revealType:TextEditorRevealType):Void;
	/**
		~~Show the text editor.~~
	**/
	function show(?column:ViewColumn):Void;
	/**
		~~Hide the text editor.~~
	**/
	function hide():Void;
};