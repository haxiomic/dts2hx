package node.vm;

typedef CompileFunctionOptions = {
	/**
		Provides an optional data with V8's code cache data for the supplied source.
	**/
	@:optional
	var cachedData : global.Buffer;
	/**
		Specifies whether to produce new cache data.
		Default: `false`,
	**/
	@:optional
	var produceCachedData : Bool;
	/**
		The sandbox/context in which the said function should be compiled in.
	**/
	@:optional
	var parsingContext : Context;
	/**
		An array containing a collection of context extensions (objects wrapping the current scope) to be applied while compiling
	**/
	@:optional
	var contextExtensions : Array<Dynamic>;
	/**
		Specifies the filename used in stack traces produced by this script.
		Default: `''`.
	**/
	@:optional
	var filename : String;
	/**
		Specifies the line number offset that is displayed in stack traces produced by this script.
		Default: `0`.
	**/
	@:optional
	var lineOffset : Float;
	/**
		Specifies the column number offset that is displayed in stack traces produced by this script.
		Default: `0`
	**/
	@:optional
	var columnOffset : Float;
};