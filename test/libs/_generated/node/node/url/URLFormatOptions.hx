package node.url;
extern interface URLFormatOptions {
	@:optional
	var auth : Null<Bool>;
	@:optional
	var fragment : Null<Bool>;
	@:optional
	var search : Null<Bool>;
	@:optional
	var unicode : Null<Bool>;
}