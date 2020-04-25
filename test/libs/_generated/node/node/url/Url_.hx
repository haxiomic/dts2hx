package node.url;
extern interface Url_ extends UrlObjectCommon {
	@:optional
	var port : Null<String>;
	@:optional
	var query : Null<haxe.extern.EitherType<String, node.querystring.ParsedUrlQuery>>;
}