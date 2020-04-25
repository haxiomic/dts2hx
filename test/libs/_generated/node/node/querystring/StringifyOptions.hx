package node.querystring;
extern interface StringifyOptions {
	@:optional
	var encodeURIComponent : Null<(str:String) -> String>;
}