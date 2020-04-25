package node.net;
extern interface ListenOptions {
	@:optional
	var port : Null<Float>;
	@:optional
	var host : Null<String>;
	@:optional
	var backlog : Null<Float>;
	@:optional
	var path : Null<String>;
	@:optional
	var exclusive : Null<Bool>;
	@:optional
	var readableAll : Null<Bool>;
	@:optional
	var writableAll : Null<Bool>;
	@:optional
	var ipv6Only : Null<Bool>;
}