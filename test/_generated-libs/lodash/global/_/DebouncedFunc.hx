package global._;

typedef DebouncedFunc<T> = {
	/**
		Call the original function, but applying the debounce rules.
		
		If the debounced function can be run immediately, this calls it and returns its return
		value.
		
		Otherwise, it returns the return value of the last invokation, or undefined if the debounced
		function was not invoked yet.
	**/
	@:selfCall
	function call(args:haxe.extern.Rest<Any>):Null<js.lib.ReturnType<T>>;
	/**
		Throw away any pending invokation of the debounced function.
	**/
	function cancel():Void;
	/**
		If there is a pending invokation of the debounced function, invoke it immediately and return
		its return value.
		
		Otherwise, return the value from the last invokation, or undefined if the debounced function
		was never invoked.
	**/
	function flush():Null<js.lib.ReturnType<T>>;
};