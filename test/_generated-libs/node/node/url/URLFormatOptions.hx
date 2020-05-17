package node.url;

typedef URLFormatOptions = {
	@:optional
	var auth : Bool;
	@:optional
	var fragment : Bool;
	@:optional
	var search : Bool;
	@:optional
	var unicode : Bool;
};