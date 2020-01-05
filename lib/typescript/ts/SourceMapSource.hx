package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2862:5
**/
@:native('ts.SourceMapSource')
extern interface SourceMapSource {
	var fileName: String;
	var text: String;
	@:optional
	var skipTrivia: (pos: Float) -> Float;
	function getLineAndCharacterOfPosition(pos: Float): typescript.ts.LineAndCharacter;
}
