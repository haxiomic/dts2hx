package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4610:5
**/

typedef ProgramHost<T> = {
	/**
	Used to create the program when need for program creation or recreation detected
	**/
	var createProgram: typescript.ts.CreateProgram<T>;
	function useCaseSensitiveFileNames(): Bool;
	function getNewLine(): String;
	function getCurrentDirectory(): String;
	function getDefaultLibFileName(options: typescript.ts.CompilerOptions): String;
	@:optional
	function getDefaultLibLocation(): String;
	@:optional
	function createHash(data: String): String;
	/**
	Use to check file presence for source files and
	if resolveModuleNames is not provided (complier is in charge of module resolution) then module files as well
	**/
	function fileExists(path: String): Bool;
	/**
	Use to read file text for source files and
	if resolveModuleNames is not provided (complier is in charge of module resolution) then module files as well
	**/
	function readFile(path: String, ?encoding: String): Null<String>;
	/**
	If provided, used for module resolution as well as to handle directory structure
	**/
	@:optional
	function directoryExists(path: String): Bool;
	/**
	If provided, used in resolutions as well as handling directory structure
	**/
	@:optional
	function getDirectories(path: String): Array<String>;
	/**
	If provided, used to cache and handle directory structure modifications
	**/
	@:optional
	function readDirectory(path: String, ?extensions: Array<String>, ?exclude: Array<String>, ?include: Array<String>, ?depth: Float): Array<String>;
	/**
	Symbol links resolution
	**/
	@:optional
	function realpath(path: String): String;
	/**
	If provided would be used to write log about compilation
	**/
	@:optional
	function trace(s: String): Void;
	/**
	If provided is used to get the environment variable
	**/
	@:optional
	function getEnvironmentVariable(name: String): Null<String>;
	/**
	If provided, used to resolve the module names, otherwise typescript's default module resolution
	**/
	@:optional
	function resolveModuleNames(moduleNames: Array<String>, containingFile: String, reusedNames: Null<Array<String>>, redirectedReference: Null<typescript.ts.ResolvedProjectReference>, options: typescript.ts.CompilerOptions): Array<Null<typescript.ts.ResolvedModule>>;
	/**
	If provided, used to resolve type reference directives, otherwise typescript's default resolution
	**/
	@:optional
	function resolveTypeReferenceDirectives(typeReferenceDirectiveNames: Array<String>, containingFile: String, redirectedReference: Null<typescript.ts.ResolvedProjectReference>, options: typescript.ts.CompilerOptions): Array<Null<typescript.ts.ResolvedTypeReferenceDirective>>;
}

