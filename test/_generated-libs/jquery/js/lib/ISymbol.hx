package js.lib;

typedef ISymbol = {
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():js.lib.Symbol;
};