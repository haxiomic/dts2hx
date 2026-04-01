package node.repl;

typedef ReplOptions = {
	/**
		The input prompt to display.
		Default: `"> "`
	**/
	@:optional
	var prompt : String;
	/**
		The `Readable` stream from which REPL input will be read.
		Default: `process.stdin`
	**/
	@:optional
	var input : global.nodejs.ReadableStream;
	/**
		The `Writable` stream to which REPL output will be written.
		Default: `process.stdout`
	**/
	@:optional
	var output : global.nodejs.WritableStream;
	/**
		If `true`, specifies that the output should be treated as a TTY terminal, and have
		ANSI/VT100 escape codes written to it.
		Default: checking the value of the `isTTY` property on the output stream upon
		instantiation.
	**/
	@:optional
	var terminal : Bool;
	/**
		The function to be used when evaluating each given line of input.
		Default: an async wrapper for the JavaScript `eval()` function. An `eval` function can
		error with `repl.Recoverable` to indicate the input was incomplete and prompt for
		additional lines.
	**/
	@:optional
	dynamic function eval(evalCmd:String, context:node.vm.Context, file:String, cb:(err:Null<js.lib.Error>, result:Dynamic) -> Void):Void;
	/**
		If `true`, specifies that the default `writer` function should include ANSI color
		styling to REPL output. If a custom `writer` function is provided then this has no
		effect.
		Default: the REPL instance's `terminal` value.
	**/
	@:optional
	var useColors : Bool;
	/**
		If `true`, specifies that the default evaluation function will use the JavaScript
		`global` as the context as opposed to creating a new separate context for the REPL
		instance. The node CLI REPL sets this value to `true`.
		Default: `false`.
	**/
	@:optional
	var useGlobal : Bool;
	/**
		If `true`, specifies that the default writer will not output the return value of a
		command if it evaluates to `undefined`.
		Default: `false`.
	**/
	@:optional
	var ignoreUndefined : Bool;
	/**
		The function to invoke to format the output of each command before writing to `output`.
		Default: a wrapper for `util.inspect`.
	**/
	@:optional
	dynamic function writer(obj:Dynamic):String;
	/**
		An optional function used for custom Tab auto completion.
	**/
	@:optional
	dynamic function completer(line:String, callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, result:node.readline.CompleterResult) -> Void>):Dynamic;
	/**
		A flag that specifies whether the default evaluator executes all JavaScript commands in
		strict mode or default (sloppy) mode.
		Accepted values are:
		- `repl.REPL_MODE_SLOPPY` - evaluates expressions in sloppy mode.
		- `repl.REPL_MODE_STRICT` - evaluates expressions in strict mode. This is equivalent to
		  prefacing every repl statement with `'use strict'`.
	**/
	@:optional
	var replMode : js.lib.Symbol;
	/**
		Stop evaluating the current piece of code when `SIGINT` is received, i.e. `Ctrl+C` is
		pressed. This cannot be used together with a custom `eval` function.
		Default: `false`.
	**/
	@:optional
	var breakEvalOnSigint : Bool;
};