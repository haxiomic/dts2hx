package js.lib;
extern interface Symbol {
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():Any;
	@:native("__@toStringTag")
	var __AtToStringTag : String;
}