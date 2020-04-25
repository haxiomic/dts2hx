package node.querystring;
extern interface ParseOptions {
	@:optional
	var maxKeys : Null<Float>;
	@:optional
	var decodeURIComponent : Null<(str:String) -> String>;
}