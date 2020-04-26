package node.url;
extern interface Url_ extends UrlObjectCommon {
	@:optional
	var port : String;
	@:optional
	var query : haxe.extern.EitherType<String, node.querystring.ParsedUrlQuery>;
}