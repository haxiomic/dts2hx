package node.querystring;
extern interface ParseOptions {
	@:optional
	var maxKeys : Float;
	@:optional
	var decodeURIComponent : (str:String) -> String;
}