package node.net;

/**
	The `BlockList` object can be used with some network APIs to specify rules for
	disabling inbound or outbound access to specific IP addresses, IP ranges, or
	IP subnets.
**/
@:jsRequire("net", "BlockList") extern class BlockList {
	function new();
	/**
		Adds a rule to block the given IP address.
	**/
	@:overload(function(address:SocketAddress):Void { })
	function addAddress(address:String, ?type:IPVersion):Void;
	/**
		Adds a rule to block a range of IP addresses from `start` (inclusive) to`end` (inclusive).
	**/
	@:overload(function(start:SocketAddress, end:SocketAddress):Void { })
	function addRange(start:String, end:String, ?type:IPVersion):Void;
	/**
		Adds a rule to block a range of IP addresses specified as a subnet mask.
	**/
	@:overload(function(net:String, prefix:Float, ?type:IPVersion):Void { })
	function addSubnet(net:SocketAddress, prefix:Float):Void;
	/**
		Returns `true` if the given IP address matches any of the rules added to the`BlockList`.
		
		```js
		const blockList = new net.BlockList();
		blockList.addAddress('123.123.123.123');
		blockList.addRange('10.0.0.1', '10.0.0.10');
		blockList.addSubnet('8592:757c:efae:4e45::', 64, 'ipv6');
		
		console.log(blockList.check('123.123.123.123'));  // Prints: true
		console.log(blockList.check('10.0.0.3'));  // Prints: true
		console.log(blockList.check('222.111.111.222'));  // Prints: false
		
		// IPv6 notation for IPv4 addresses works:
		console.log(blockList.check('::ffff:7b7b:7b7b', 'ipv6')); // Prints: true
		console.log(blockList.check('::ffff:123.123.123.123', 'ipv6')); // Prints: true
		```
	**/
	@:overload(function(address:String, ?type:IPVersion):Bool { })
	function check(address:SocketAddress):Bool;
	/**
		The list of rules added to the blocklist.
	**/
	var rules : haxe.ds.ReadOnlyArray<String>;
	static var prototype : BlockList;
}