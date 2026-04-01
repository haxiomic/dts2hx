package vscode;

/**
	Denotes a location of an editor in the window. Editors can be arranged in a grid
	and each column represents one editor location in that grid by counting the editors
	in order of their appearance.
**/
@:jsRequire("vscode", "ViewColumn") extern enum abstract ViewColumn(Int) from Int to Int {
	/**
		A *symbolic* editor column representing the currently active column. This value
		can be used when opening editors, but the *resolved* [viewColumn](#TextEditor.viewColumn)-value
		of editors will always be `One`, `Two`, `Three`,... or `undefined` but never `Active`.
	**/
	var Active;
	/**
		A *symbolic* editor column representing the column to the side of the active one. This value
		can be used when opening editors, but the *resolved* [viewColumn](#TextEditor.viewColumn)-value
		of editors will always be `One`, `Two`, `Three`,... or `undefined` but never `Beside`.
	**/
	var Beside;
	/**
		The first editor column.
	**/
	var One;
	/**
		The second editor column.
	**/
	var Two;
	/**
		The third editor column.
	**/
	var Three;
	/**
		The fourth editor column.
	**/
	var Four;
	/**
		The fifth editor column.
	**/
	var Five;
	/**
		The sixth editor column.
	**/
	var Six;
	/**
		The seventh editor column.
	**/
	var Seven;
	/**
		The eighth editor column.
	**/
	var Eight;
	/**
		The ninth editor column.
	**/
	var Nine;
}