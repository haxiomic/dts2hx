package vscode;

/**
	A color presentation object describes how a [`color`](#Color) should be represented as text and what
	edits are required to refer to it from source code.
	
	For some languages one color can have multiple presentations, e.g. css can represent the color red with
	the constant `Red`, the hex-value `#ff0000`, or in rgba and hsla forms. In csharp other representations
	apply, e.g. `System.Drawing.Color.Red`.
**/
@:jsRequire("vscode", "ColorPresentation") extern class ColorPresentation {
	/**
		Creates a new color presentation.
	**/
	function new(label:String);
	/**
		The label of this color presentation. It will be shown on the color
		picker header. By default this is also the text that is inserted when selecting
		this color presentation.
	**/
	var label : String;
	/**
		An [edit](#TextEdit) which is applied to a document when selecting
		this presentation for the color.  When `falsy` the [label](#ColorPresentation.label)
		is used.
	**/
	@:optional
	var textEdit : TextEdit;
	/**
		An optional array of additional [text edits](#TextEdit) that are applied when
		selecting this color presentation. Edits must not overlap with the main [edit](#ColorPresentation.textEdit) nor with themselves.
	**/
	@:optional
	var additionalTextEdits : Array<TextEdit>;
	static var prototype : ColorPresentation;
}