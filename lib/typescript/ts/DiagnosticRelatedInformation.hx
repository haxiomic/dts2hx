package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2542:5
**/
@:native('ts.DiagnosticRelatedInformation')
extern interface DiagnosticRelatedInformation {
	var category: typescript.ts.DiagnosticCategory;
	var code: Float;
	var file: Null<typescript.ts.SourceFile>;
	var start: Null<Float>;
	var length: Null<Float>;
	var messageText: haxe.extern.EitherType<String, typescript.ts.DiagnosticMessageChain>;
}

