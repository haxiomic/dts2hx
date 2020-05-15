package global;
typedef JQueryParam = {
	/**
		Create a serialized representation of an array or object, suitable for use in a URL query string or Ajax request.
	**/
	@:selfCall
	function call(obj:Dynamic, ?traditional:Bool):String;
};