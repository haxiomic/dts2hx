package node.wasi;

typedef WASIOptions = {
	/**
		An array of strings that the WebAssembly application will
		see as command line arguments. The first argument is the virtual path to the
		WASI command itself.
	**/
	@:optional
	var args : haxe.ds.ReadOnlyArray<String>;
	/**
		An object similar to `process.env` that the WebAssembly
		application will see as its environment.
	**/
	@:optional
	var env : Dynamic;
	/**
		This object represents the WebAssembly application's
		sandbox directory structure. The string keys of `preopens` are treated as
		directories within the sandbox. The corresponding values in `preopens` are
		the real paths to those directories on the host machine.
	**/
	@:optional
	var preopens : global.nodejs.Dict<String>;
	/**
		By default, when WASI applications call `__wasi_proc_exit()`
		`wasi.start()` will return with the exit code specified rather than terminatng the process.
		Setting this option to `false` will cause the Node.js process to exit with
		the specified exit code instead.
	**/
	@:optional
	var returnOnExit : Bool;
	/**
		The file descriptor used as standard input in the WebAssembly application.
	**/
	@:optional
	var stdin : Float;
	/**
		The file descriptor used as standard output in the WebAssembly application.
	**/
	@:optional
	var stdout : Float;
	/**
		The file descriptor used as standard error in the WebAssembly application.
	**/
	@:optional
	var stderr : Float;
	/**
		The version of WASI requested.
		Currently the only supported versions are `'unstable'` and `'preview1'`. This option is mandatory.
	**/
	var version : String;
};