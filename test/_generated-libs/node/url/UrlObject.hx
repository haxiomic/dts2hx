package node.url;
extern typedef UrlObject = {
	@:optional
	var port : ts.AnyOf2<String, Float>;
	@:optional
	var query : ts.AnyOf2<String, { }>;
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