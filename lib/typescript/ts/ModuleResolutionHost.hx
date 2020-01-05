package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2757:5
**/
@:native('ts.ModuleResolutionHost')
extern interface ModuleResolutionHost {
	function fileExists(fileName: String): Bool;
	function readFile(fileName: String): Null<String>;
	@:optional
	function trace(s: String): Void;
	@:optional
	function directoryExists(directoryName: String): Bool;
	/**
	Resolve a symbolic link.
	**/
	@:optional
	function realpath(path: String): String;
	@:optional
	function getCurrentDirectory(): String;
	@:optional
	function getDirectories(path: String): Array<String>;
}

