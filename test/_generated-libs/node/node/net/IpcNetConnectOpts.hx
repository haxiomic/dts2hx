package node.net;
extern typedef IpcNetConnectOpts = {
	@:optional
	var timeout : Float;
	var path : String;
	@:optional
	var fd : Float;
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readable : Bool;
	@:optional
	var writable : Bool;
};