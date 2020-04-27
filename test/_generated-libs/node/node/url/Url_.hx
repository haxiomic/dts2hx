package node.url;
extern typedef Url_ = UrlObjectCommon & { @:optional
	var port : String; @:optional
	var query : haxe.extern.EitherType<String, node.querystring.ParsedUrlQuery>; };