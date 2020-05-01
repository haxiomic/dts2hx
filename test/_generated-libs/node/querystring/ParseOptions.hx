package node.querystring;
typedef ParseOptions = {
	@:optional
	var maxKeys : Float;
	@:optional
	var decodeURIComponent : (str:String) -> String;
};