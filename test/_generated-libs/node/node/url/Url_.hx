package node.url;

typedef Url_ = {
	var auth : Null<String>;
	var hash : Null<String>;
	var host : Null<String>;
	var hostname : Null<String>;
	var href : String;
	var path : Null<String>;
	var pathname : Null<String>;
	var protocol : Null<String>;
	var search : Null<String>;
	var slashes : Null<Bool>;
	var port : Null<String>;
	var query : Null<ts.AnyOf2<String, node.querystring.ParsedUrlQuery>>;
};