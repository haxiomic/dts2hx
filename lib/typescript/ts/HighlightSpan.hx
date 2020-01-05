package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5325:5
**/
@:native('ts.HighlightSpan')
extern interface HighlightSpan {
	@:optional
	var fileName: String;
	@:optional
	var isInString: Bool;
	var textSpan: typescript.ts.TextSpan;
	@:optional
	var contextSpan: typescript.ts.TextSpan;
	var kind: typescript.ts.HighlightSpanKind;
}

