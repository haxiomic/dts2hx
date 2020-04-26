package node.url;
extern interface UrlObject extends UrlObjectCommon {
	@:optional
	var port : haxe.extern.EitherType<String, Float>;
	@:optional
	var query : haxe.extern.EitherType<String, { }>;
}