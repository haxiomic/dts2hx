package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5457:5
**/
@:native('ts.QuickInfo')
extern interface QuickInfo {
	var kind: typescript.ts.ScriptElementKind;
	var kindModifiers: String;
	var textSpan: typescript.ts.TextSpan;
	@:optional
	var displayParts: Array<typescript.ts.SymbolDisplayPart>;
	@:optional
	var documentation: Array<typescript.ts.SymbolDisplayPart>;
	@:optional
	var tags: Array<typescript.ts.JSDocTagInfo>;
}

