package node.querystring;

typedef ParseOptions = {
	/**
		Specifies the maximum number of keys to parse. Specify `0` to remove key counting limitations.
	**/
	@:optional
	var maxKeys : Float;
	/**
		The function to use when decoding percent-encoded characters in the query string.
	**/
	@:optional
	dynamic function decodeURIComponent(str:String):String;
};