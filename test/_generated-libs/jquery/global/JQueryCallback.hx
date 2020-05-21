package global;

typedef JQueryCallback = {
	/**
		Add a callback or a collection of callbacks to a callback list.
	**/
	function add(callback:global.jquery.TypeOrArray<haxe.Constraints.Function>, callbacks:haxe.extern.Rest<global.jquery.TypeOrArray<haxe.Constraints.Function>>):JQueryCallback;
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
	function fire(args:haxe.extern.Rest<Dynamic>):JQueryCallback;
	/**
		Determine if the callbacks have already been called at least once.
	**/
	function fired():Bool;
	/**
		Call all callbacks in a list with the given context and arguments.
	**/
	function fireWith(context:Dynamic, ?args:js.lib.ArrayLike<Dynamic>):JQueryCallback;
	/**
		Determine whether or not the list has any callbacks attached. If a callback is provided as an argument, determine whether it is in a list.
	**/
	function has(?callback:haxe.Constraints.Function):Bool;
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
	function remove(callbacks:haxe.extern.Rest<haxe.Constraints.Function>):JQueryCallback;
};