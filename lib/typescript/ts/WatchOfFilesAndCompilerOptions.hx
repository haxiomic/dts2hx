package typescript.ts;


/**
Creates the watch that generates program using the root files and compiler options

Generated from: test-definitions/typescript/typescript-extended.d.ts:4681:5
**/

typedef WatchOfFilesAndCompilerOptions<T> = typescript.ts.Watch<T> & {
	/**
	Updates the root files in the program, only if this is not config file compilation
	**/
	function updateRootFileNames(fileNames: Array<String>): Void;
}

