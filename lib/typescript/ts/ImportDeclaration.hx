package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1486:5
**/

typedef ImportDeclaration = typescript.ts.Statement & {
	@:optional
	var importClause: typescript.ts.ImportClause;
	/**
	If this is not a StringLiteral it will be a grammar error.
	**/
	var moduleSpecifier: typescript.ts.Expression;
}

