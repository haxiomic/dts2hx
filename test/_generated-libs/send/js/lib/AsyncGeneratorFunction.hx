package js.lib;

typedef AsyncGeneratorFunction = {
	/**
		Creates a new AsyncGenerator object.
	**/
	@:selfCall
	function call(args:haxe.extern.Rest<Dynamic>):AsyncGenerator<Any, Dynamic, Dynamic>;
	/**
		The length of the arguments.
	**/
	final length : Float;
	/**
		Returns the name of the function.
	**/
	final name : String;
	/**
		A reference to the prototype.
	**/
	final prototype : AsyncGenerator<Any, Dynamic, Dynamic>;
};