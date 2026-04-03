package node.util;

typedef ParseArgsConfig = {
	/**
		Array of argument strings.
	**/
	@:optional
	var args : haxe.ds.ReadOnlyArray<String>;
	/**
		Used to describe arguments known to the parser.
	**/
	@:optional
	var options : ParseArgsConfig;
	/**
		Should an error be thrown when unknown arguments are encountered,
		or when arguments are passed that do not match the `type` configured in `options`.
	**/
	@:optional
	var strict : Bool;
	/**
		Whether this command accepts positional arguments.
	**/
	@:optional
	var allowPositionals : Bool;
	/**
		If `true`, allows explicitly setting boolean options to `false` by prefixing the option name with `--no-`.
	**/
	@:optional
	var allowNegative : Bool;
	/**
		Return the parsed tokens. This is useful for extending the built-in behavior,
		from adding additional checks through to reprocessing the tokens in different ways.
	**/
	@:optional
	var tokens : Bool;
};