package typescript.ts;


/**
Represents a single signature to show in signature help.
The id is used for subsequent calls into the language service to ask questions about the
signature help item in the context of any documents that have been updated.  i.e. after
an edit has happened, while signature help is still active, the host can ask important
questions like 'what parameter is the user currently contained within?'.

Generated from: test-definitions/typescript/typescript-extended.d.ts:5503:5
**/
@:native('ts.SignatureHelpItem')
extern interface SignatureHelpItem {
	var isVariadic: Bool;
	var prefixDisplayParts: Array<typescript.ts.SymbolDisplayPart>;
	var suffixDisplayParts: Array<typescript.ts.SymbolDisplayPart>;
	var separatorDisplayParts: Array<typescript.ts.SymbolDisplayPart>;
	var parameters: Array<typescript.ts.SignatureHelpParameter>;
	var documentation: Array<typescript.ts.SymbolDisplayPart>;
	var tags: Array<typescript.ts.JSDocTagInfo>;
}

