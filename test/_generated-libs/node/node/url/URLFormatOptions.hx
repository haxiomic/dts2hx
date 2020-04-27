package node.url;
extern interface URLFormatOptions {
	@:optional
	var auth : Bool;
	@:optional
	var fragment : Bool;
	@:optional
	var search : Bool;
	@:optional
	var unicode : Bool;
}