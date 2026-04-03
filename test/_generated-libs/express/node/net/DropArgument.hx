package node.net;

typedef DropArgument = {
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
	@:optional
	var localFamily : String;
	@:optional
	var remoteAddress : String;
	@:optional
	var remotePort : Float;
	@:optional
	var remoteFamily : String;
};