package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1857:5
**/
@:native('ts.ParseConfigHost')
extern interface ParseConfigHost {
	var useCaseSensitiveFileNames: Bool;
	function readDirectory(rootDir: String, extensions: Array<String>, excludes: Null<Array<String>>, includes: Array<String>, ?depth: Float): Array<String>;
	/**
	Gets a value indicating whether the specified path exists and is a file.
	**/
	function fileExists(path: String): Bool;
	function readFile(path: String): Null<String>;
	@:optional
	function trace(s: String): Void;
}

