package node.url;
extern interface UrlObjectCommon {
	@:optional
	var auth : Null<String>;
	@:optional
	var hash : Null<String>;
	@:optional
	var host : Null<String>;
	@:optional
	var hostname : Null<String>;
	@:optional
	var href : Null<String>;
	@:optional
	var path : Null<String>;
	@:optional
	var pathname : Null<String>;
	@:optional
	var protocol : Null<String>;
	@:optional
	var search : Null<String>;
	@:optional
	var slashes : Null<Bool>;
}