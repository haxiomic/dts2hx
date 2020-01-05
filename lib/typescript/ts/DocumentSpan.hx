package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5286:5
**/
@:native('ts.DocumentSpan')
extern interface DocumentSpan {
	var textSpan: typescript.ts.TextSpan;
	var fileName: String;
	/**
	If the span represents a location that was remapped (e.g. via a .d.ts.map file),
	then the original filename and span will be specified here
	**/
	@:optional
	var originalTextSpan: typescript.ts.TextSpan;
	@:optional
	var originalFileName: String;
	/**
	If DocumentSpan.textSpan is the span for name of the declaration,
	then this is the span for relevant declaration
	**/
	@:optional
	var contextSpan: typescript.ts.TextSpan;
	@:optional
	var originalContextSpan: typescript.ts.TextSpan;
}

