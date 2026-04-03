package node.net;

@:jsRequire("net", "SocketAddress") extern class SocketAddress {
	function new(options:SocketAddressInitOptions);
	/**
		Either \`'ipv4'\` or \`'ipv6'\`.
	**/
	final address : String;
	/**
		Either \`'ipv4'\` or \`'ipv6'\`.
	**/
	final family : IPVersion;
	final port : Float;
	final flowlabel : Float;
	static var prototype : SocketAddress;
}