package js.lib;

/**
	An intrinsic object that provides functions to convert JavaScript values to and from the JavaScript Object Notation (JSON) format.
**/
typedef IJSON = {
	/**
		Converts a JavaScript Object Notation (JSON) string into an object.
	**/
	function parse(text:String, ?reviver:(key:String, value:Dynamic) -> Dynamic):Dynamic;
	/**
		Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
		
		Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
	**/
	@:overload(function(value:Dynamic, ?replacer:Array<ts.AnyOf2<String, Float>>, ?space:ts.AnyOf2<String, Float>):String { })
	function stringify(value:Dynamic, ?replacer:(key:String, value:Dynamic) -> Dynamic, ?space:ts.AnyOf2<String, Float>):String;
};