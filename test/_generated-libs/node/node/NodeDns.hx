package node;

@:jsRequire("node:dns") @valueModuleOnly extern class NodeDns {
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
	@:overload(function(hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupAllOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.LookupAddress>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void { })
	static function lookup(hostname:String, family:Float, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void;
	/**
		Resolves the given `address` and `port` into a host name and service using
		the operating system's underlying `getnameinfo` implementation.
		
		If `address` is not a valid IP address, a `TypeError` will be thrown.
		The `port` will be coerced to a number. If it is not a legal port, a `TypeError` will be thrown.
		
		On an error, `err` is an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object,
		where `err.code` is the error code.
		
		```js
		import dns from 'node:dns';
		dns.lookupService('127.0.0.1', 22, (err, hostname, service) => {
		  console.log(hostname, service);
		  // Prints: localhost ssh
		});
		```
		
		If this method is invoked as its [util.promisify()](https://nodejs.org/docs/latest-v20.x/api/util.html#utilpromisifyoriginal) ed
		version, it returns a `Promise` for an `Object` with `hostname` and `service` properties.
	**/
	static function lookupService(address:String, port:Float, callback:(err:Null<global.nodejs.ErrnoException>, hostname:String, service:String) -> Void):Void;
	/**
		Uses the DNS protocol to resolve a host name (e.g. `'nodejs.org'`) into an array
		of the resource records. The `callback` function has arguments `(err, records)`. When successful, `records` will be an array of resource
		records. The type and structure of individual results varies based on `rrtype`:
		
		<omitted>
		
		On error, `err` is an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object,
		where `err.code` is one of the `DNS error codes`.
	**/
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.AnyRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, address:Array<node.dns.CaaRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.MxRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.NaptrRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:node.dns.SoaRecord) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.SrvRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<Array<String>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf8<Array<String>, Array<Array<String>>, node.dns.SoaRecord, Array<node.dns.AnyRecord>, Array<node.dns.CaaRecord>, Array<node.dns.MxRecord>, Array<node.dns.NaptrRecord>, Array<node.dns.SrvRecord>>) -> Void):Void { })
	static function resolve(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve a IPv4 addresses (`A` records) for the `hostname`. The `addresses` argument passed to the `callback` function
		will contain an array of IPv4 addresses (e.g.`['74.125.79.104', '74.125.79.105', '74.125.79.106']`).
	**/
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve4(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve IPv6 addresses (`AAAA` records) for the `hostname`. The `addresses` argument passed to the `callback` function
		will contain an array of IPv6 addresses.
	**/
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve6(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve `CNAME` records for the `hostname`. The `addresses` argument passed to the `callback` function
		will contain an array of canonical name records available for the `hostname` (e.g. `['bar.example.com']`).
	**/
	static function resolveCname(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve `CAA` records for the `hostname`. The `addresses` argument passed to the `callback` function
		will contain an array of certification authority authorization records
		available for the `hostname` (e.g. `[{critical: 0, iodef: 'mailto:pki@example.com'}, {critical: 128, issue: 'pki.example.com'}]`).
	**/
	static function resolveCaa(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, records:Array<node.dns.CaaRecord>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve mail exchange records (`MX` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
		contain an array of objects containing both a `priority` and `exchange` property (e.g. `[{priority: 10, exchange: 'mx.example.com'}, ...]`).
	**/
	static function resolveMx(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.MxRecord>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve regular expression-based records (`NAPTR` records) for the `hostname`. The `addresses` argument passed to the `callback` function will contain an array of
		objects with the following properties:
		
		* `flags`
		* `service`
		* `regexp`
		* `replacement`
		* `order`
		* `preference`
		
		```js
		{
		  flags: 's',
		  service: 'SIP+D2U',
		  regexp: '',
		  replacement: '_sip._udp.example.com',
		  order: 30,
		  preference: 100
		}
		```
	**/
	static function resolveNaptr(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.NaptrRecord>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve name server records (`NS` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
		contain an array of name server records available for `hostname` (e.g. `['ns1.example.com', 'ns2.example.com']`).
	**/
	static function resolveNs(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve pointer records (`PTR` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
		be an array of strings containing the reply records.
	**/
	static function resolvePtr(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve a start of authority record (`SOA` record) for
		the `hostname`. The `address` argument passed to the `callback` function will
		be an object with the following properties:
		
		* `nsname`
		* `hostmaster`
		* `serial`
		* `refresh`
		* `retry`
		* `expire`
		* `minttl`
		
		```js
		{
		  nsname: 'ns.example.com',
		  hostmaster: 'root.example.com',
		  serial: 2013101809,
		  refresh: 10000,
		  retry: 2400,
		  expire: 604800,
		  minttl: 3600
		}
		```
	**/
	static function resolveSoa(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, address:node.dns.SoaRecord) -> Void):Void;
	/**
		Uses the DNS protocol to resolve service records (`SRV` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
		be an array of objects with the following properties:
		
		* `priority`
		* `weight`
		* `port`
		* `name`
		
		```js
		{
		  priority: 10,
		  weight: 5,
		  port: 21223,
		  name: 'service.example.com'
		}
		```
	**/
	static function resolveSrv(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.SrvRecord>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve text queries (`TXT` records) for the `hostname`. The `records` argument passed to the `callback` function is a
		two-dimensional array of the text records available for `hostname` (e.g.`[ ['v=spf1 ip4:0.0.0.0 ', '~all' ] ]`). Each sub-array contains TXT chunks of
		one record. Depending on the use case, these could be either joined together or
		treated separately.
	**/
	static function resolveTxt(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<Array<String>>) -> Void):Void;
	/**
		Uses the DNS protocol to resolve all records (also known as `ANY` or `*` query).
		The `ret` argument passed to the `callback` function will be an array containing
		various types of records. Each object has a property `type` that indicates the
		type of the current record. And depending on the `type`, additional properties
		will be present on the object:
		
		<omitted>
		
		Here is an example of the `ret` object passed to the callback:
		
		```js
		[ { type: 'A', address: '127.0.0.1', ttl: 299 },
		  { type: 'CNAME', value: 'example.com' },
		  { type: 'MX', exchange: 'alt4.aspmx.l.example.com', priority: 50 },
		  { type: 'NS', value: 'ns1.example.com' },
		  { type: 'TXT', entries: [ 'v=spf1 include:_spf.example.com ~all' ] },
		  { type: 'SOA',
		    nsname: 'ns1.example.com',
		    hostmaster: 'admin.example.com',
		    serial: 156696742,
		    refresh: 900,
		    retry: 900,
		    expire: 1800,
		    minttl: 60 } ]
		```
		
		DNS server operators may choose not to respond to `ANY` queries. It may be better to call individual methods like
		{@link
		resolve4
		}
		,
		{@link
		resolveMx
		}
		, and so on. For more details, see
		[RFC 8482](https://tools.ietf.org/html/rfc8482).
	**/
	static function resolveAny(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<node.dns.AnyRecord>) -> Void):Void;
	/**
		Performs a reverse DNS query that resolves an IPv4 or IPv6 address to an
		array of host names.
		
		On error, `err` is an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object, where `err.code` is
		one of the [DNS error codes](https://nodejs.org/docs/latest-v20.x/api/dns.html#error-codes).
	**/
	static function reverse(ip:String, callback:(err:Null<global.nodejs.ErrnoException>, hostnames:Array<String>) -> Void):Void;
	/**
		Get the default value for `order` in
		{@link
		lookup
		}
		and [`dnsPromises.lookup()`](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnspromiseslookuphostname-options).
		The value could be:
		
		* `ipv4first`: for `order` defaulting to `ipv4first`.
		* `ipv6first`: for `order` defaulting to `ipv6first`.
		* `verbatim`: for `order` defaulting to `verbatim`.
	**/
	static function getDefaultResultOrder():String;
	/**
		Sets the IP address and port of servers to be used when performing DNS
		resolution. The `servers` argument is an array of [RFC 5952](https://tools.ietf.org/html/rfc5952#section-6) formatted
		addresses. If the port is the IANA default DNS port (53) it can be omitted.
		
		```js
		dns.setServers([
		  '4.4.4.4',
		  '[2001:4860:4860::8888]',
		  '4.4.4.4:1053',
		  '[2001:4860:4860::8888]:1053',
		]);
		```
		
		An error will be thrown if an invalid address is provided.
		
		The `dns.setServers()` method must not be called while a DNS query is in
		progress.
		
		The
		{@link
		setServers
		}
		method affects only
		{@link
		resolve
		}
		, `dns.resolve*()` and
		{@link
		reverse
		}
		(and specifically _not_
		{@link
		lookup
		}
		).
		
		This method works much like [resolve.conf](https://man7.org/linux/man-pages/man5/resolv.conf.5.html).
		That is, if attempting to resolve with the first server provided results in a `NOTFOUND` error, the `resolve()` method will _not_ attempt to resolve with
		subsequent servers provided. Fallback DNS servers will only be used if the
		earlier ones time out or result in some other error.
	**/
	static function setServers(servers:haxe.ds.ReadOnlyArray<String>):Void;
	/**
		Returns an array of IP address strings, formatted according to [RFC 5952](https://tools.ietf.org/html/rfc5952#section-6),
		that are currently configured for DNS resolution. A string will include a port
		section if a custom port is used.
		
		```js
		[
		  '4.4.4.4',
		  '2001:4860:4860::8888',
		  '4.4.4.4:1053',
		  '[2001:4860:4860::8888]:1053',
		]
		```
	**/
	static function getServers():Array<String>;
	/**
		Set the default value of `order` in
		{@link
		lookup
		}
		and [`dnsPromises.lookup()`](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnspromiseslookuphostname-options).
		The value could be:
		
		* `ipv4first`: sets default `order` to `ipv4first`.
		* `ipv6first`: sets default `order` to `ipv6first`.
		* `verbatim`: sets default `order` to `verbatim`.
		
		The default is `verbatim` and
		{@link
		setDefaultResultOrder
		}
		have higher
		priority than [`--dns-result-order`](https://nodejs.org/docs/latest-v20.x/api/cli.html#--dns-result-orderorder). When using
		[worker threads](https://nodejs.org/docs/latest-v20.x/api/worker_threads.html),
		{@link
		setDefaultResultOrder
		}
		from the main
		thread won't affect the default dns orders in workers.
	**/
	static function setDefaultResultOrder(order:String):Void;
	/**
		Limits returned address types to the types of non-loopback addresses configured on the system. For example, IPv4 addresses are
		only returned if the current system has at least one IPv4 address configured.
	**/
	static final ADDRCONFIG : Float;
	/**
		If the IPv6 family was specified, but no IPv6 addresses were found, then return IPv4 mapped IPv6 addresses. It is not supported
		on some operating systems (e.g. FreeBSD 10.1).
	**/
	static final V4MAPPED : Float;
	/**
		If `dns.V4MAPPED` is specified, return resolved IPv6 addresses as
		well as IPv4 mapped IPv6 addresses.
	**/
	static final ALL : Float;
	static final NODATA : String;
	static final FORMERR : String;
	static final SERVFAIL : String;
	static final NOTFOUND : String;
	static final NOTIMP : String;
	static final REFUSED : String;
	static final BADQUERY : String;
	static final BADNAME : String;
	static final BADFAMILY : String;
	static final BADRESP : String;
	static final CONNREFUSED : String;
	static final TIMEOUT : String;
	static final EOF : String;
	static final FILE : String;
	static final NOMEM : String;
	static final DESTRUCTION : String;
	static final BADSTR : String;
	static final BADFLAGS : String;
	static final NONAME : String;
	static final BADHINTS : String;
	static final NOTINITIALIZED : String;
	static final LOADIPHLPAPI : String;
	static final ADDRGETNETWORKPARAMS : String;
	static final CANCELLED : String;
}