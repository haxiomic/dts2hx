package node.readline;

typedef ReadLineOptions = {
	/**
		The [`Readable`](https://nodejs.org/docs/latest-v20.x/api/stream.html#readable-streams) stream to listen to
	**/
	var input : global.nodejs.ReadableStream;
	/**
		The [`Writable`](https://nodejs.org/docs/latest-v20.x/api/stream.html#writable-streams) stream to write readline data to.
	**/
	@:optional
	var output : global.nodejs.WritableStream;
	/**
		An optional function used for Tab autocompletion.
	**/
	@:optional
	dynamic function completer(line:String, callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, result:CompleterResult) -> Void>):CompleterResult;
	/**
		`true` if the `input` and `output` streams should be treated like a TTY,
		and have ANSI/VT100 escape codes written to it.
		Default: checking `isTTY` on the `output` stream upon instantiation.
	**/
	@:optional
	var terminal : Bool;
	/**
		Initial list of history lines.
		This option makes sense only if `terminal` is set to `true` by the user or by an internal `output` check,
		otherwise the history caching mechanism is not initialized at all.
	**/
	@:optional
	var history : Array<String>;
	/**
		Maximum number of history lines retained.
		To disable the history set this value to `0`.
		This option makes sense only if `terminal` is set to `true` by the user or by an internal `output` check,
		otherwise the history caching mechanism is not initialized at all.
	**/
	@:optional
	var historySize : Float;
	/**
		If `true`, when a new input line added to the history list duplicates an older one,
		this removes the older line from the list.
	**/
	@:optional
	var removeHistoryDuplicates : Bool;
	/**
		The prompt string to use.
	**/
	@:optional
	var prompt : String;
	/**
		If the delay between `\r` and `\n` exceeds `crlfDelay` milliseconds,
		both `\r` and `\n` will be treated as separate end-of-line input.
		`crlfDelay` will be coerced to a number no less than `100`.
		It can be set to `Infinity`, in which case
		`\r` followed by `\n` will always be considered a single newline
		(which may be reasonable for [reading files](https://nodejs.org/docs/latest-v20.x/api/readline.html#example-read-file-stream-line-by-line) with `\r\n` line delimiter).
	**/
	@:optional
	var crlfDelay : Float;
	/**
		The duration `readline` will wait for a character
		(when reading an ambiguous key sequence in milliseconds
		one that can both form a complete key sequence using the input read so far
		and can take additional input to complete a longer key sequence).
	**/
	@:optional
	var escapeCodeTimeout : Float;
	/**
		The number of spaces a tab is equal to (minimum 1).
	**/
	@:optional
	var tabSize : Float;
	/**
		Allows closing the interface using an AbortSignal.
		Aborting the signal will internally call `close` on the interface.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};