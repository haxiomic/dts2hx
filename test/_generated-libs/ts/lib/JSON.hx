package ts.lib;
/**
	An intrinsic object that provides functions to convert JavaScript values to and from the JavaScript Object Notation (JSON) format.
**/
extern typedef JSON = {
	/**
		Converts a JavaScript Object Notation (JSON) string into an object.
	**/
	function parse(text:String, ?reviver:(key:String, value:Any) -> Any):Any;
	/**
		Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
		
		Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
	**/
	@:overload(function(value:Any, ?replacer:std.Array<haxe.extern.EitherType<String, Float>>, ?space:haxe.extern.EitherType<String, Float>):String { })
	function stringify(value:Any, ?replacer:(key:String, value:Any) -> Any, ?space:haxe.extern.EitherType<String, Float>):String;
};