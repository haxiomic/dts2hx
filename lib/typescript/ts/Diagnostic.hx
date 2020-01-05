package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2536:5
**/
@:native('ts.Diagnostic')
extern interface Diagnostic extends typescript.ts.DiagnosticRelatedInformation {
	/**
	May store more in future. For now, this will simply be `true` to indicate when a diagnostic is an unused-identifier diagnostic.
	**/
	@:optional
	var reportsUnnecessary: {};
	@:optional
	var source: String;
	@:optional
	var relatedInformation: Array<typescript.ts.DiagnosticRelatedInformation>;
}

