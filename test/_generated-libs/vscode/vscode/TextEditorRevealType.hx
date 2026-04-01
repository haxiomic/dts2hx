package vscode;

/**
	Represents different [reveal](#TextEditor.revealRange) strategies in a text editor.
**/
@:jsRequire("vscode", "TextEditorRevealType") extern enum abstract TextEditorRevealType(Int) from Int to Int {
	/**
		The range will be revealed with as little scrolling as possible.
	**/
	var Default;
	/**
		The range will always be revealed in the center of the viewport.
	**/
	var InCenter;
	/**
		If the range is outside the viewport, it will be revealed in the center of the viewport.
		Otherwise, it will be revealed with as little scrolling as possible.
	**/
	var InCenterIfOutsideViewport;
	/**
		The range will always be revealed at the top of the viewport.
	**/
	var AtTop;
}