package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1947:5
**/

typedef SourceMapSpan = {
	/**
	Line number in the .js file.
	**/
	var emittedLine: Float;
	/**
	Column number in the .js file.
	**/
	var emittedColumn: Float;
	/**
	Line number in the .ts file.
	**/
	var sourceLine: Float;
	/**
	Column number in the .ts file.
	**/
	var sourceColumn: Float;
	/**
	Optional name (index into names array) associated with this span.
	**/
	@:optional
	var nameIndex: Float;
	/**
	.ts file (index into sources array) associated with this span
	**/
	var sourceIndex: Float;
}

