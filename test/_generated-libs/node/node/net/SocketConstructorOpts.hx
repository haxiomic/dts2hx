package node.net;
extern typedef SocketConstructorOpts = { @:optional
	var fd : Float; @:optional
	var allowHalfOpen : Bool; @:optional
	var readable : Bool; @:optional
	var writable : Bool; };