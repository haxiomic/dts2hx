package node.dns;

/**
	Resolves a host name (e.g. `'nodejs.org'`) into the first found A (IPv4) or
	AAAA (IPv6) record. All `option` properties are optional. If `options` is an
	integer, then it must be `4` or `6` – if `options` is `0` or not provided, then
	IPv4 and IPv6 addresses are both returned if found.
	
	With the `all` option set to `true`, the arguments for `callback` change to `(err, addresses)`, with `addresses` being an array of objects with the
	properties `address` and `family`.
	
	On error, `err` is an `Error` object, where `err.code` is the error code.
	Keep in mind that `err.code` will be set to `'ENOTFOUND'` not only when
	the host name does not exist but also when the lookup fails in other ways
	such as no available file descriptors.
	
	`dns.lookup()` does not necessarily have anything to do with the DNS protocol.
	The implementation uses an operating system facility that can associate names
	with addresses and vice versa. This implementation can have subtle but
	important consequences on the behavior of any Node.js program. Please take some
	time to consult the [Implementation considerations section](https://nodejs.org/docs/latest-v20.x/api/dns.html#implementation-considerations)
	before using `dns.lookup()`.
	
	Example usage:
	
	```js
	import dns from 'node:dns';
	const options = {
	  family: 6,
	  hints: dns.ADDRCONFIG | dns.V4MAPPED,
	};
	dns.lookup('example.com', options, (err, address, family) =>
	  console.log('address: %j family: IPv%s', address, family));
	// address: "2606:2800:220:1:248:1893:25c8:1946" family: IPv6
	
	// When options.all is true, the result will be an Array.
	options.all = true;
	dns.lookup('example.com', options, (err, addresses) =>
	  console.log('addresses: %j', addresses));
	// addresses: [{"address":"2606:2800:220:1:248:1893:25c8:1946","family":6}]
	```
	
	If this method is invoked as its [util.promisify()](https://nodejs.org/docs/latest-v20.x/api/util.html#utilpromisifyoriginal) ed
	version, and `all` is not set to `true`, it returns a `Promise` for an `Object` with `address` and `family` properties.
**/
@:jsRequire("dns", "lookup") @valueModuleOnly extern class Lookup {
	/**
		Resolves a host name (e.g. `'nodejs.org'`) into the first found A (IPv4) or
		AAAA (IPv6) record. All `option` properties are optional. If `options` is an
		integer, then it must be `4` or `6` – if `options` is `0` or not provided, then
		IPv4 and IPv6 addresses are both returned if found.
		
		With the `all` option set to `true`, the arguments for `callback` change to `(err, addresses)`, with `addresses` being an array of objects with the
		properties `address` and `family`.
		
		On error, `err` is an `Error` object, where `err.code` is the error code.
		Keep in mind that `err.code` will be set to `'ENOTFOUND'` not only when
		the host name does not exist but also when the lookup fails in other ways
		such as no available file descriptors.
		
		`dns.lookup()` does not necessarily have anything to do with the DNS protocol.
		The implementation uses an operating system facility that can associate names
		with addresses and vice versa. This implementation can have subtle but
		important consequences on the behavior of any Node.js program. Please take some
		time to consult the [Implementation considerations section](https://nodejs.org/docs/latest-v20.x/api/dns.html#implementation-considerations)
		before using `dns.lookup()`.
		
		Example usage:
		
		```js
		import dns from 'node:dns';
		const options = {
		  family: 6,
		  hints: dns.ADDRCONFIG | dns.V4MAPPED,
		};
		dns.lookup('example.com', options, (err, address, family) =>
		  console.log('address: %j family: IPv%s', address, family));
		// address: "2606:2800:220:1:248:1893:25c8:1946" family: IPv6
		
		// When options.all is true, the result will be an Array.
		options.all = true;
		dns.lookup('example.com', options, (err, addresses) =>
		  console.log('addresses: %j', addresses));
		// addresses: [{"address":"2606:2800:220:1:248:1893:25c8:1946","family":6}]
		```
		
		If this method is invoked as its [util.promisify()](https://nodejs.org/docs/latest-v20.x/api/util.html#utilpromisifyoriginal) ed
		version, and `all` is not set to `true`, it returns a `Promise` for an `Object` with `address` and `family` properties.
	**/
	@:overload(function(hostname:String, options:LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, options:LookupAllOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<LookupAddress>) -> Void):Void { })
	@:overload(function(hostname:String, options:LookupOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<LookupAddress>>, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void { })
	@:selfCall
	static function call(hostname:String, family:Float, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void;
}