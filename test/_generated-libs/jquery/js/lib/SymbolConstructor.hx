package js.lib;

typedef SymbolConstructor = {
	/**
		Returns a new unique Symbol value.
	**/
	@:selfCall
	function call(?description:ts.AnyOf2<String, Float>):js.lib.Symbol;
	/**
		A method that returns the default iterator for an object. Called by the semantics of the
		for-of statement.
	**/
	final iterator : js.lib.Symbol;
	/**
		A reference to the prototype.
	**/
	final prototype : js.lib.Symbol;
	/**
		Returns a Symbol object from the global symbol registry matching the given key if found.
		Otherwise, returns a new symbol with this key.
	**/
	@:native("for")
	function for_(key:String):js.lib.Symbol;
	/**
		Returns a key from the global symbol registry matching the given Symbol if found.
		Otherwise, returns a undefined.
	**/
	function keyFor(sym:js.lib.Symbol):Null<String>;
	/**
		A method that determines if a constructor object recognizes an object as one of the
		constructor’s instances. Called by the semantics of the instanceof operator.
	**/
	final hasInstance : js.lib.Symbol;
	/**
		A Boolean value that if true indicates that an object should flatten to its array elements
		by Array.prototype.concat.
	**/
	final isConcatSpreadable : js.lib.Symbol;
	/**
		A regular expression method that matches the regular expression against a string. Called
		by the String.prototype.match method.
	**/
	final match : js.lib.Symbol;
	/**
		A regular expression method that replaces matched substrings of a string. Called by the
		String.prototype.replace method.
	**/
	final replace : js.lib.Symbol;
	/**
		A regular expression method that returns the index within a string that matches the
		regular expression. Called by the String.prototype.search method.
	**/
	final search : js.lib.Symbol;
	/**
		A function valued property that is the constructor function that is used to create
		derived objects.
	**/
	final species : js.lib.Symbol;
	/**
		A regular expression method that splits a string at the indices that match the regular
		expression. Called by the String.prototype.split method.
	**/
	final split : js.lib.Symbol;
	/**
		A method that converts an object to a corresponding primitive value.
		Called by the ToPrimitive abstract operation.
	**/
	final toPrimitive : js.lib.Symbol;
	/**
		A String value that is used in the creation of the default string description of an object.
		Called by the built-in method Object.prototype.toString.
	**/
	final toStringTag : js.lib.Symbol;
	/**
		An Object whose truthy properties are properties that are excluded from the 'with'
		environment bindings of the associated objects.
	**/
	final unscopables : js.lib.Symbol;
};