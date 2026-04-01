package node.repl;

/**
	Provides a customizable Read-Eval-Print-Loop (REPL).
	
	Instances of `repl.REPLServer` will accept individual lines of user input, evaluate those
	according to a user-defined evaluation function, then output the result. Input and output
	may be from `stdin` and `stdout`, respectively, or may be connected to any Node.js `stream`.
	
	Instances of `repl.REPLServer` support automatic completion of inputs, simplistic Emacs-style
	line editing, multi-line inputs, ANSI-styled output, saving and restoring current REPL session
	state, error recovery, and customizable evaluation functions.
	
	Instances of `repl.REPLServer` are created using the `repl.start()` method and _should not_
	be created directly using the JavaScript `new` keyword.
**/
@:jsRequire("repl", "REPLServer") extern class REPLServer extends node.readline.Interface {
	/**
		NOTE: According to the documentation:
		
		> Instances of `repl.REPLServer` are created using the `repl.start()` method and
		> _should not_ be created directly using the JavaScript `new` keyword.
		
		`REPLServer` cannot be subclassed due to implementation specifics in NodeJS.
	**/
	private function new();
	/**
		The `vm.Context` provided to the `eval` function to be used for JavaScript
		evaluation.
	**/
	final context : node.vm.Context;
	/**
		The `Readable` stream from which REPL input will be read.
	**/
	final inputStream : global.nodejs.ReadableStream;
	/**
		The `Writable` stream to which REPL output will be written.
	**/
	final outputStream : global.nodejs.WritableStream;
	/**
		The commands registered via `replServer.defineCommand()`.
	**/
	final commands : haxe.DynamicAccess<Null<REPLCommand>>;
	/**
		A value indicating whether the REPL is currently in "editor mode".
	**/
	final editorMode : Bool;
	/**
		A value indicating whether the `_` variable has been assigned.
	**/
	final underscoreAssigned : Bool;
	/**
		The last evaluation result from the REPL (assigned to the `_` variable inside of the REPL).
	**/
	final last : Dynamic;
	/**
		A value indicating whether the `_error` variable has been assigned.
	**/
	final underscoreErrAssigned : Bool;
	/**
		The last error raised inside the REPL (assigned to the `_error` variable inside of the REPL).
	**/
	final lastError : Dynamic;
	/**
		Specified in the REPL options, this is the function to be used when evaluating each
		given line of input. If not specified in the REPL options, this is an async wrapper
		for the JavaScript `eval()` function.
	**/
	function eval(evalCmd:String, context:node.vm.Context, file:String, cb:(err:Null<js.lib.Error>, result:Dynamic) -> Void):Void;
	/**
		Specified in the REPL options, this is a value indicating whether the default
		`writer` function should include ANSI color styling to REPL output.
	**/
	final useColors : Bool;
	/**
		Specified in the REPL options, this is a value indicating whether the default `eval`
		function will use the JavaScript `global` as the context as opposed to creating a new
		separate context for the REPL instance.
	**/
	final useGlobal : Bool;
	/**
		Specified in the REPL options, this is a value indicating whether the default `writer`
		function should output the result of a command if it evaluates to `undefined`.
	**/
	final ignoreUndefined : Bool;
	/**
		Specified in the REPL options, this is the function to invoke to format the output of
		each command before writing to `outputStream`. If not specified in the REPL options,
		this will be a wrapper for `util.inspect`.
	**/
	function writer(obj:Dynamic):String;
	/**
		Specified in the REPL options, this is the function to use for custom Tab auto-completion.
	**/
	function completer(line:String, callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, result:node.readline.CompleterResult) -> Void>):Dynamic;
	/**
		Specified in the REPL options, this is a flag that specifies whether the default `eval`
		function should execute all JavaScript commands in strict mode or default (sloppy) mode.
		Possible values are:
		- `repl.REPL_MODE_SLOPPY` - evaluates expressions in sloppy mode.
		- `repl.REPL_MODE_STRICT` - evaluates expressions in strict mode. This is equivalent to
		   prefacing every repl statement with `'use strict'`.
	**/
	final replMode : js.lib.Symbol;
	/**
		Used to add new `.`-prefixed commands to the REPL instance. Such commands are invoked
		by typing a `.` followed by the `keyword`.
	**/
	function defineCommand(keyword:String, cmd:ts.AnyOf2<REPLCommand, REPLCommandAction>):Void;
	/**
		Readies the REPL instance for input from the user, printing the configured `prompt` to a
		new line in the `output` and resuming the `input` to accept new input.
		
		When multi-line input is being entered, an ellipsis is printed rather than the 'prompt'.
		
		This method is primarily intended to be called from within the action function for
		commands registered using the `replServer.defineCommand()` method.
	**/
	function displayPrompt(?preserveCursor:Bool):Void;
	/**
		Clears any command that has been buffered but not yet executed.
		
		This method is primarily intended to be called from within the action function for
		commands registered using the `replServer.defineCommand()` method.
	**/
	function clearBufferedCommand():Void;
	/**
		Initializes a history log file for the REPL instance. When executing the
		Node.js binary and using the command line REPL, a history file is initialized
		by default. However, this is not the case when creating a REPL
		programmatically. Use this method to initialize a history log file when working
		with REPL instances programmatically.
	**/
	function setupHistory(path:String, cb:(err:Null<js.lib.Error>, repl:REPLServer) -> Void):Void;
	/**
		events.EventEmitter
		1. close - inherited from `readline.Interface`
		2. line - inherited from `readline.Interface`
		3. pause - inherited from `readline.Interface`
		4. resume - inherited from `readline.Interface`
		5. SIGCONT - inherited from `readline.Interface`
		6. SIGINT - inherited from `readline.Interface`
		7. SIGTSTP - inherited from `readline.Interface`
		8. exit
		9. reset
	**/
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, input:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, context:node.vm.Context):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(input:String) -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:() -> Void):REPLServer { })
	@:overload(function(event:String, listener:(context:node.vm.Context) -> Void):REPLServer { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	function pause():REPLServer;
	function resume():REPLServer;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REPLServer;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):REPLServer;
	function setMaxListeners(n:Float):REPLServer;
	static var prototype : REPLServer;
}