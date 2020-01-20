package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4648:5
**/

typedef WatchCompilerHost<T> = typescript.ts.ProgramHost<T> & {
	/**
	If provided, callback to invoke after every new program creation
	**/
	@:optional
	function afterProgramCreate(program: T): Void;
}

