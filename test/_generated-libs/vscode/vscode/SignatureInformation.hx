package vscode;

/**
	Represents the signature of something callable. A signature
	can have a label, like a function-name, a doc-comment, and
	a set of parameters.
**/
@:jsRequire("vscode", "SignatureInformation") extern class SignatureInformation {
	/**
		Creates a new signature information object.
	**/
	function new(label:String, ?documentation:ts.AnyOf2<String, MarkdownString>);
	/**
		The label of this signature. Will be shown in
		the UI.
	**/
	var label : String;
	/**
		The human-readable doc-comment of this signature. Will be shown
		in the UI but can be omitted.
	**/
	@:optional
	var documentation : ts.AnyOf2<String, MarkdownString>;
	/**
		The parameters of this signature.
	**/
	var parameters : Array<ParameterInformation>;
	/**
		The index of the active parameter.
		
		If provided, this is used in place of [`SignatureHelp.activeSignature`](#SignatureHelp.activeSignature).
	**/
	@:optional
	var activeParameter : Float;
	static var prototype : SignatureInformation;
}