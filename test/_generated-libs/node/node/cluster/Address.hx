package node.cluster;

typedef Address = {
	var address : String;
	var port : Float;
	/**
		The `addressType` is one of:
		
		* `4` (TCPv4)
		* `6` (TCPv6)
		* `-1` (Unix domain socket)
		* `'udp4'` or `'udp6'` (UDPv4 or UDPv6)
	**/
	var addressType : ts.AnyOf2<Int, String>;
};