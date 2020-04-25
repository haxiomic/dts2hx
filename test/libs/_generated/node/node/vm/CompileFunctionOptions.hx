package node.vm;
extern interface CompileFunctionOptions extends BaseOptions {
	/**
		Provides an optional data with V8's code cache data for the supplied source.
	**/
	@:optional
	var cachedData : Null<global.Buffer>;
	/**
		Specifies whether to produce new cache data.
		Default: `false`,
	**/
	@:optional
	var produceCachedData : Null<Bool>;
	/**
		The sandbox/context in which the said function should be compiled in.
	**/
	@:optional
	var parsingContext : Null<Context>;
	/**
		An array containing a collection of context extensions (objects wrapping the current scope) to be applied while compiling
	**/
	@:optional
	var contextExtensions : Null<std.Array<js.lib.Object>>;
}