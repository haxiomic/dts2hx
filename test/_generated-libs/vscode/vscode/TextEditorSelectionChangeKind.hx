package vscode;

/**
	Represents sources that can cause [selection change events](#window.onDidChangeTextEditorSelection).
**/
@:jsRequire("vscode", "TextEditorSelectionChangeKind") extern enum abstract TextEditorSelectionChangeKind(Int) from Int to Int {
	/**
		Selection changed due to typing in the editor.
	**/
	final Keyboard;
	/**
		Selection change due to clicking in the editor.
	**/
	final Mouse;
	/**
		Selection changed because a command ran.
	**/
	final Command;
}