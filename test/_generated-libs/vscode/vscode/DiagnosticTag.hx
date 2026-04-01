package vscode;

/**
	Additional metadata about the type of a diagnostic.
**/
@:jsRequire("vscode", "DiagnosticTag") extern enum abstract DiagnosticTag(Int) from Int to Int {
	/**
		Unused or unnecessary code.
		
		Diagnostics with this tag are rendered faded out. The amount of fading
		is controlled by the `"editorUnnecessaryCode.opacity"` theme color. For
		example, `"editorUnnecessaryCode.opacity": "#000000c0"` will render the
		code with 75% opacity. For high contrast themes, use the
		`"editorUnnecessaryCode.border"` theme color to underline unnecessary code
		instead of fading it out.
	**/
	var Unnecessary;
	/**
		Deprecated or obsolete code.
		
		Diagnostics with this tag are rendered with a strike through.
	**/
	var Deprecated;
}