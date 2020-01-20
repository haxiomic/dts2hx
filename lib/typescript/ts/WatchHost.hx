package typescript.ts;


/**
Host that has watch functionality used in --watch mode

Generated from: test-definitions/typescript/typescript-extended.d.ts:4598:5
**/

typedef WatchHost = {
	/**
	If provided, called with Diagnostic message that informs about change in watch status
	**/
	@:optional
	function onWatchStatusChange(diagnostic: typescript.ts.Diagnostic, newLine: String, options: typescript.ts.CompilerOptions, ?errorCount: Float): Void;
	/**
	Used to watch changes in source files, missing files needed to update the program or config file
	**/
	function watchFile(path: String, callback: typescript.ts.FileWatcherCallback, ?pollingInterval: Float): typescript.ts.FileWatcher;
	/**
	Used to watch resolved module's failed lookup locations, config file specs, type roots where auto type reference directives are added
	**/
	function watchDirectory(path: String, callback: typescript.ts.DirectoryWatcherCallback, ?recursive: Bool): typescript.ts.FileWatcher;
	/**
	If provided, will be used to set delayed compilation, so that multiple changes in short span are compiled together
	**/
	@:optional
	function setTimeout(callback: (args: haxe.extern.Rest<Any>) -> Void, ms: Float, args: haxe.extern.Rest<Any>): Any;
	/**
	If provided, will be used to reset existing delayed compilation
	**/
	@:optional
	function clearTimeout(timeoutId: Any): Void;
}

