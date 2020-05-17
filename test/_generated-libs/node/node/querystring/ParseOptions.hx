package node.querystring;

typedef ParseOptions = {
	@:optional
	var maxKeys : Float;
	@:optional
	dynamic function decodeURIComponent(str:String):String;
};