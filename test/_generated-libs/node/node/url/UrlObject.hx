package node.url;
extern typedef UrlObject = UrlObjectCommon & { @:optional
	var port : haxe.extern.EitherType<String, Float>; @:optional
	var query : haxe.extern.EitherType<String, { }>; };