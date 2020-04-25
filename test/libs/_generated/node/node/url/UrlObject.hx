package node.url;
extern interface UrlObject extends UrlObjectCommon {
	@:optional
	var port : Null<haxe.extern.EitherType<String, Float>>;
	@:optional
	var query : Null<haxe.extern.EitherType<String, { }>>;
}