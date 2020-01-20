package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:3259:5
**/

typedef Scanner = {
	function getStartPos(): Float;
	function getToken(): typescript.ts.SyntaxKind;
	function getTextPos(): Float;
	function getTokenPos(): Float;
	function getTokenText(): String;
	function getTokenValue(): String;
	function hasUnicodeEscape(): Bool;
	function hasExtendedUnicodeEscape(): Bool;
	function hasPrecedingLineBreak(): Bool;
	function isIdentifier(): Bool;
	function isReservedWord(): Bool;
	function isUnterminated(): Bool;
	function reScanGreaterToken(): typescript.ts.SyntaxKind;
	function reScanSlashToken(): typescript.ts.SyntaxKind;
	function reScanTemplateToken(): typescript.ts.SyntaxKind;
	function scanJsxIdentifier(): typescript.ts.SyntaxKind;
	function scanJsxAttributeValue(): typescript.ts.SyntaxKind;
	function reScanJsxToken(): typescript.ts.JsxTokenSyntaxKind;
	function reScanLessThanToken(): typescript.ts.SyntaxKind;
	function reScanQuestionToken(): typescript.ts.SyntaxKind;
	function scanJsxToken(): typescript.ts.JsxTokenSyntaxKind;
	function scanJsDocToken(): typescript.ts.JSDocSyntaxKind;
	function scan(): typescript.ts.SyntaxKind;
	function getText(): String;
	function setText(text: Null<String>, ?start: Float, ?length: Float): Void;
	function setOnError(onError: Null<typescript.ts.ErrorCallback>): Void;
	function setScriptTarget(scriptTarget: typescript.ts.ScriptTarget): Void;
	function setLanguageVariant(variant: typescript.ts.LanguageVariant): Void;
	function setTextPos(textPos: Float): Void;
	function lookAhead<T>(callback: () -> T): T;
	function scanRange<T>(start: Float, length: Float, callback: () -> T): T;
	function tryScan<T>(callback: () -> T): T;
}

