package node.url;
extern typedef UrlWithParsedQuery = {
	var query : node.querystring.ParsedUrlQuery;
	@:optional
	var port : String;
	@:optional
	var auth : String;
	@:optional
	var hash : String;
	@:optional
	var host : String;
	@:optional
	var hostname : String;
	@:optional
	var href : String;
	@:optional
	var path : String;
	@:optional
	var pathname : String;
	@:optional
	var protocol : String;
	@:optional
	var search : String;
	@:optional
	var slashes : Bool;
};