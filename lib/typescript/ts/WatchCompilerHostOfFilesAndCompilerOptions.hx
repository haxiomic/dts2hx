package typescript.ts;


/**
Host to create watch with root files and options

Generated from: test-definitions/typescript/typescript-extended.d.ts:4645:5
**/

typedef WatchCompilerHostOfFilesAndCompilerOptions<T> = typescript.ts.WatchCompilerHost<T> & {
	/**
	root files to use to generate program
	**/
	var rootFiles: Array<String>;
	/**
	Compiler options
	**/
	var options: typescript.ts.CompilerOptions;
	/**
	Project References
	**/
	@:optional
	var projectReferences: Array<typescript.ts.ProjectReference>;
}

