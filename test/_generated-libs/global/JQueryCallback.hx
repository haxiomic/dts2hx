package global;
extern typedef JQueryCallback = {
	/**
		Add a callback or a collection of callbacks to a callback list.
	**/
	function add(callback:haxe.extern.EitherType<ts.lib.IFunction, std.Array<ts.lib.IFunction>>, callbacks:std.Array<haxe.extern.EitherType<ts.lib.IFunction, std.Array<ts.lib.IFunction>>>):JQueryCallback;
	/**
		Disable a callback list from doing anything more.
	**/
	function disable():JQueryCallback;
	/**
		Determine if the callbacks list has been disabled.
	**/
	function disabled():Bool;
	/**
		Remove all of the callbacks from a list.
	**/
	function empty():JQueryCallback;
	/**
		Call all of the callbacks with the given arguments.
	**/
	function fire(args:std.Array<Any>):JQueryCallback;
	/**
		Determine if the callbacks have already been called at least once.
	**/
	function fired():Bool;
	/**
		Call all callbacks in a list with the given context and arguments.
	**/
	function fireWith(context:Any, ?args:ts.lib.ArrayLike<Any>):JQueryCallback;
	/**
		Determine whether or not the list has any callbacks attached. If a callback is provided as an argument, determine whether it is in a list.
	**/
	function has(?callback:ts.lib.IFunction):Bool;
	/**
		Lock a callback list in its current state.
	**/
	function lock():JQueryCallback;
	/**
		Determine if the callbacks list has been locked.
	**/
	function locked():Bool;
	/**
		Remove a callback or a collection of callbacks from a callback list.
	**/
	function remove(callbacks:std.Array<ts.lib.IFunction>):JQueryCallback;
};