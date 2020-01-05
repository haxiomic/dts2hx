package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1499:5
**/
@:native('ts.ExportDeclaration')
extern interface ExportDeclaration extends typescript.ts.DeclarationStatement {
	/**
	Will not be assigned in the case of `export * from "foo";`
	**/
	@:optional
	var exportClause: typescript.ts.NamedExports;
	/**
	If this is not a StringLiteral it will be a grammar error.
	**/
	@:optional
	var moduleSpecifier: typescript.ts.Expression;
}

