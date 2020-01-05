package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4443:5
**/
@:native('ts.BuilderProgramHost')
extern interface BuilderProgramHost {
	/**
	return true if file names are treated with case sensitivity
	**/
	function useCaseSensitiveFileNames(): Bool;
	/**
	If provided this would be used this hash instead of actual file shape text for detecting changes
	**/
	@:optional
	var createHash: (data: String) -> String;
	/**
	When emit or emitNextAffectedFile are called without writeFile,
	this callback if present would be used to write files
	**/
	@:optional
	var writeFile: typescript.ts.WriteFileCallback;
}

