package vscode;

/**
	Represents a diagnostic, such as a compiler error or warning. Diagnostic objects
	are only valid in the scope of a file.
**/
@:jsRequire("vscode", "Diagnostic") extern class Diagnostic {
	/**
		Creates a new diagnostic object.
	**/
	function new(range:Range, message:String, ?severity:DiagnosticSeverity);
	/**
		The range to which this diagnostic applies.
	**/
	var range : Range;
	/**
		The human-readable message.
	**/
	var message : String;
	/**
		The severity, default is [error](#DiagnosticSeverity.Error).
	**/
	var severity : DiagnosticSeverity;
	/**
		A human-readable string describing the source of this
		diagnostic, e.g. 'typescript' or 'super lint'.
	**/
	@:optional
	var source : String;
	/**
		A code or identifier for this diagnostic.
		Should be used for later processing, e.g. when providing [code actions](#CodeActionContext).
	**/
	@:optional
	var code : ts.AnyOf3<String, Float, {
		/**
			A code or identifier for this diagnostic.
			Should be used for later processing, e.g. when providing [code actions](#CodeActionContext).
		**/
		var value : ts.AnyOf2<String, Float>;
		/**
			A target URI to open with more information about the diagnostic error.
		**/
		var target : Uri;
	}>;
	/**
		An array of related diagnostic information, e.g. when symbol-names within
		a scope collide all definitions can be marked via this property.
	**/
	@:optional
	var relatedInformation : Array<DiagnosticRelatedInformation>;
	/**
		Additional metadata about the diagnostic.
	**/
	@:optional
	var tags : Array<DiagnosticTag>;
	static var prototype : Diagnostic;
}