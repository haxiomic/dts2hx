package node.querystring;

typedef StringifyOptions = {
	/**
		The function to use when converting URL-unsafe characters to percent-encoding in the query string.
	**/
	@:optional
	dynamic function encodeURIComponent(str:String):String;
};