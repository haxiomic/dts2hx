package vscode;

/**
	Represents a parameter of a callable-signature. A parameter can
	have a label and a doc-comment.
**/
@:jsRequire("vscode", "ParameterInformation") extern class ParameterInformation {
	/**
		Creates a new parameter information object.
	**/
	function new(label:ts.AnyOf2<String, ts.Tuple2<Float, Float>>, ?documentation:ts.AnyOf2<String, MarkdownString>);
	/**
		The label of this signature.
		
		Either a string or inclusive start and exclusive end offsets within its containing
		[signature label](#SignatureInformation.label). *Note*: A label of type string must be
		a substring of its containing signature information's [label](#SignatureInformation.label).
	**/
	var label : ts.AnyOf2<String, ts.Tuple2<Float, Float>>;
	/**
		The human-readable doc-comment of this signature. Will be shown
		in the UI but can be omitted.
	**/
	@:optional
	var documentation : ts.AnyOf2<String, MarkdownString>;
	static var prototype : ParameterInformation;
}