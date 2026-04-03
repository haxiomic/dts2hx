package node.url;

typedef UrlWithStringQuery = {
	var query : Null<String>;
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
};