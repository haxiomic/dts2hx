package node.net;

typedef SocketAddressInitOptions = {
	/**
		The network address as either an IPv4 or IPv6 string.
	**/
	@:optional
	var address : String;
	@:optional
	var family : IPVersion;
	/**
		An IPv6 flow-label used only if `family` is `'ipv6'`.
	**/
	@:optional
	var flowlabel : Float;
	/**
		An IP port.
	**/
	@:optional
	var port : Float;
};