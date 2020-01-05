package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4638:5
**/
@:native('ts.WatchCompilerHost')
extern interface WatchCompilerHost<T> extends typescript.ts.ProgramHost<T> {
	/**
	If provided, callback to invoke after every new program creation
	**/
	@:optional
	function afterProgramCreate(program: T): Void;
}

