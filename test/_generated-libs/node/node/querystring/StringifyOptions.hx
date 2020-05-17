package node.querystring;

typedef StringifyOptions = {
	@:optional
	dynamic function encodeURIComponent(str:String):String;
};