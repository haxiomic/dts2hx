package node.net;
extern interface SocketConstructorOpts {
	@:optional
	var fd : Null<Float>;
	@:optional
	var allowHalfOpen : Null<Bool>;
	@:optional
	var readable : Null<Bool>;
	@:optional
	var writable : Null<Bool>;
}