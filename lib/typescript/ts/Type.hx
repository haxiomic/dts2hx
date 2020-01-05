package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2336:5
**/
@:native('ts.Type')
extern interface Type {
	var flags: typescript.ts.TypeFlags;
	var symbol: typescript.ts.Symbol;
	@:optional
	var pattern: typescript.ts.DestructuringPattern;
	@:optional
	var aliasSymbol: typescript.ts.Symbol;
	@:optional
	var aliasTypeArguments: Array<typescript.ts.Type>;
	function getFlags(): typescript.ts.TypeFlags;
	function getSymbol(): Null<typescript.ts.Symbol>;
	function getProperties(): Array<typescript.ts.Symbol>;
	function getProperty(propertyName: String): Null<typescript.ts.Symbol>;
	function getApparentProperties(): Array<typescript.ts.Symbol>;
	function getCallSignatures(): Array<typescript.ts.Signature>;
	function getConstructSignatures(): Array<typescript.ts.Signature>;
	function getStringIndexType(): Null<typescript.ts.Type>;
	function getNumberIndexType(): Null<typescript.ts.Type>;
	function getBaseTypes(): Null<Array<typescript.ts.BaseType>>;
	function getNonNullableType(): typescript.ts.Type;
	function getConstraint(): Null<typescript.ts.Type>;
	function getDefault(): Null<typescript.ts.Type>;
	function isUnion(): Bool;
	function isIntersection(): Bool;
	function isUnionOrIntersection(): Bool;
	function isLiteral(): Bool;
	function isStringLiteral(): Bool;
	function isNumberLiteral(): Bool;
	function isTypeParameter(): Bool;
	function isClassOrInterface(): Bool;
	function isClass(): Bool;
}

