package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2872:5
**/

typedef SourceMapSource = {
	var fileName: String;
	var text: String;
	@:optional
	var skipTrivia: (pos: Float) -> Float;
	function getLineAndCharacterOfPosition(pos: Float): typescript.ts.LineAndCharacter;
}

