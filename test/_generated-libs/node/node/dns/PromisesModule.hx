package node.dns;

@:jsRequire("dns", "promises") @valueModuleOnly extern class PromisesModule {
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
		Resolves a host name (e.g. `'nodejs.org'`) into the first found A (IPv4) or
		AAAA (IPv6) record. All `option` properties are optional. If `options` is an
		integer, then it must be `4` or `6` – if `options` is not provided, then IPv4
		and IPv6 addresses are both returned if found.
		
		With the `all` option set to `true`, the `Promise` is resolved with `addresses` being an array of objects with the properties `address` and `family`.
		
		On error, the `Promise` is rejected with an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object, where `err.code` is the error code.
		Keep in mind that `err.code` will be set to `'ENOTFOUND'` not only when
		the host name does not exist but also when the lookup fails in other ways
		such as no available file descriptors.
		
		[`dnsPromises.lookup()`](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnspromiseslookuphostname-options) does not necessarily have anything to do with the DNS
		protocol. The implementation uses an operating system facility that can
		associate names with addresses and vice versa. This implementation can have
		subtle but important consequences on the behavior of any Node.js program. Please
		take some time to consult the [Implementation considerations section](https://nodejs.org/docs/latest-v20.x/api/dns.html#implementation-considerations) before
		using `dnsPromises.lookup()`.
		
		Example usage:
		
		```js
		import dns from 'node:dns';
		const dnsPromises = dns.promises;
		const options = {
		  family: 6,
		  hints: dns.ADDRCONFIG | dns.V4MAPPED,
		};
		
		dnsPromises.lookup('example.com', options).then((result) => {
		  console.log('address: %j family: IPv%s', result.address, result.family);
		  // address: "2606:2800:220:1:248:1893:25c8:1946" family: IPv6
		});
		
		// When options.all is true, the result will be an Array.
		options.all = true;
		dnsPromises.lookup('example.com', options).then((result) => {
		  console.log('addresses: %j', result);
		  // addresses: [{"address":"2606:2800:220:1:248:1893:25c8:1946","family":6}]
		});
		```
	**/
	@:overload(function(hostname:String, options:LookupOneOptions):js.lib.Promise<LookupAddress> { })
	@:overload(function(hostname:String, options:LookupAllOptions):js.lib.Promise<Array<LookupAddress>> { })
	@:overload(function(hostname:String, options:LookupOptions):js.lib.Promise<ts.AnyOf2<LookupAddress, Array<LookupAddress>>> { })
	@:overload(function(hostname:String):js.lib.Promise<LookupAddress> { })
	static function lookup(hostname:String, family:Float):js.lib.Promise<LookupAddress>;
	/**
		Resolves the given `address` and `port` into a host name and service using
		the operating system's underlying `getnameinfo` implementation.
		
		If `address` is not a valid IP address, a `TypeError` will be thrown.
		The `port` will be coerced to a number. If it is not a legal port, a `TypeError` will be thrown.
		
		On error, the `Promise` is rejected with an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object, where `err.code` is the error code.
		
		```js
		import dns from 'node:dns';
		dns.promises.lookupService('127.0.0.1', 22).then((result) => {
		  console.log(result.hostname, result.service);
		  // Prints: localhost ssh
		});
		```
	**/
	static function lookupService(address:String, port:Float):js.lib.Promise<{
		var hostname : String;
		var service : String;
	}>;
	/**
		Uses the DNS protocol to resolve a host name (e.g. `'nodejs.org'`) into an array
		of the resource records. When successful, the `Promise` is resolved with an
		array of resource records. The type and structure of individual results vary
		based on `rrtype`:
		
		<omitted>
		
		On error, the `Promise` is rejected with an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object, where `err.code`
		is one of the [DNS error codes](https://nodejs.org/docs/latest-v20.x/api/dns.html#error-codes).
	**/
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<AnyRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<CaaRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<MxRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<NaptrRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<SoaRecord> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<SrvRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<Array<String>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<ts.AnyOf8<Array<String>, Array<Array<String>>, SoaRecord, Array<AnyRecord>, Array<CaaRecord>, Array<MxRecord>, Array<NaptrRecord>, Array<SrvRecord>>> { })
	static function resolve(hostname:String):js.lib.Promise<Array<String>>;
	/**
		Uses the DNS protocol to resolve IPv4 addresses (`A` records) for the `hostname`. On success, the `Promise` is resolved with an array of IPv4
		addresses (e.g. `['74.125.79.104', '74.125.79.105', '74.125.79.106']`).
	**/
	@:overload(function(hostname:String, options:ResolveWithTtlOptions):js.lib.Promise<Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, options:ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<RecordWithTtl>>> { })
	static function resolve4(hostname:String):js.lib.Promise<Array<String>>;
	/**
		Uses the DNS protocol to resolve IPv6 addresses (`AAAA` records) for the `hostname`. On success, the `Promise` is resolved with an array of IPv6
		addresses.
	**/
	@:overload(function(hostname:String, options:ResolveWithTtlOptions):js.lib.Promise<Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, options:ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<RecordWithTtl>>> { })
	static function resolve6(hostname:String):js.lib.Promise<Array<String>>;
	/**
		Uses the DNS protocol to resolve all records (also known as `ANY` or `*` query).
		On success, the `Promise` is resolved with an array containing various types of
		records. Each object has a property `type` that indicates the type of the
		current record. And depending on the `type`, additional properties will be
		present on the object:
		
		<omitted>
		
		Here is an example of the result object:
		
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
	**/
	static function resolveAny(hostname:String):js.lib.Promise<Array<AnyRecord>>;
	/**
		Uses the DNS protocol to resolve `CAA` records for the `hostname`. On success,
		the `Promise` is resolved with an array of objects containing available
		certification authority authorization records available for the `hostname` (e.g. `[{critical: 0, iodef: 'mailto:pki@example.com'},{critical: 128, issue: 'pki.example.com'}]`).
	**/
	static function resolveCaa(hostname:String):js.lib.Promise<Array<CaaRecord>>;
	/**
		Uses the DNS protocol to resolve `CNAME` records for the `hostname`. On success,
		the `Promise` is resolved with an array of canonical name records available for
		the `hostname` (e.g. `['bar.example.com']`).
	**/
	static function resolveCname(hostname:String):js.lib.Promise<Array<String>>;
	/**
		Uses the DNS protocol to resolve mail exchange records (`MX` records) for the `hostname`. On success, the `Promise` is resolved with an array of objects
		containing both a `priority` and `exchange` property (e.g.`[{priority: 10, exchange: 'mx.example.com'}, ...]`).
	**/
	static function resolveMx(hostname:String):js.lib.Promise<Array<MxRecord>>;
	/**
		Uses the DNS protocol to resolve regular expression-based records (`NAPTR` records) for the `hostname`. On success, the `Promise` is resolved with an array
		of objects with the following properties:
		
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
	static function resolveNaptr(hostname:String):js.lib.Promise<Array<NaptrRecord>>;
	/**
		Uses the DNS protocol to resolve name server records (`NS` records) for the `hostname`. On success, the `Promise` is resolved with an array of name server
		records available for `hostname` (e.g.`['ns1.example.com', 'ns2.example.com']`).
	**/
	static function resolveNs(hostname:String):js.lib.Promise<Array<String>>;
	/**
		Uses the DNS protocol to resolve pointer records (`PTR` records) for the `hostname`. On success, the `Promise` is resolved with an array of strings
		containing the reply records.
	**/
	static function resolvePtr(hostname:String):js.lib.Promise<Array<String>>;
	/**
		Uses the DNS protocol to resolve a start of authority record (`SOA` record) for
		the `hostname`. On success, the `Promise` is resolved with an object with the
		following properties:
		
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
	static function resolveSoa(hostname:String):js.lib.Promise<SoaRecord>;
	/**
		Uses the DNS protocol to resolve service records (`SRV` records) for the `hostname`. On success, the `Promise` is resolved with an array of objects with
		the following properties:
		
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
	static function resolveSrv(hostname:String):js.lib.Promise<Array<SrvRecord>>;
	/**
		Uses the DNS protocol to resolve text queries (`TXT` records) for the `hostname`. On success, the `Promise` is resolved with a two-dimensional array
		of the text records available for `hostname` (e.g.`[ ['v=spf1 ip4:0.0.0.0 ', '~all' ] ]`). Each sub-array contains TXT chunks of
		one record. Depending on the use case, these could be either joined together or
		treated separately.
	**/
	static function resolveTxt(hostname:String):js.lib.Promise<Array<Array<String>>>;
	/**
		Performs a reverse DNS query that resolves an IPv4 or IPv6 address to an
		array of host names.
		
		On error, the `Promise` is rejected with an [`Error`](https://nodejs.org/docs/latest-v20.x/api/errors.html#class-error) object, where `err.code`
		is one of the [DNS error codes](https://nodejs.org/docs/latest-v20.x/api/dns.html#error-codes).
	**/
	static function reverse(ip:String):js.lib.Promise<Array<String>>;
	/**
		Get the default value for `verbatim` in
		{@link
		lookup
		}
		and [dnsPromises.lookup()](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnspromiseslookuphostname-options).
		The value could be:
		
		* `ipv4first`: for `verbatim` defaulting to `false`.
		* `verbatim`: for `verbatim` defaulting to `true`.
	**/
	static function getDefaultResultOrder():String;
	/**
		Sets the IP address and port of servers to be used when performing DNS
		resolution. The `servers` argument is an array of [RFC 5952](https://tools.ietf.org/html/rfc5952#section-6) formatted
		addresses. If the port is the IANA default DNS port (53) it can be omitted.
		
		```js
		dnsPromises.setServers([
		  '4.4.4.4',
		  '[2001:4860:4860::8888]',
		  '4.4.4.4:1053',
		  '[2001:4860:4860::8888]:1053',
		]);
		```
		
		An error will be thrown if an invalid address is provided.
		
		The `dnsPromises.setServers()` method must not be called while a DNS query is in
		progress.
		
		This method works much like [resolve.conf](https://man7.org/linux/man-pages/man5/resolv.conf.5.html).
		That is, if attempting to resolve with the first server provided results in a `NOTFOUND` error, the `resolve()` method will _not_ attempt to resolve with
		subsequent servers provided. Fallback DNS servers will only be used if the
		earlier ones time out or result in some other error.
	**/
	static function setServers(servers:haxe.ds.ReadOnlyArray<String>):Void;
	/**
		Set the default value of `order` in `dns.lookup()` and `
		{@link
		lookup
		}
		`. The value could be:
		
		* `ipv4first`: sets default `order` to `ipv4first`.
		* `ipv6first`: sets default `order` to `ipv6first`.
		* `verbatim`: sets default `order` to `verbatim`.
		
		The default is `verbatim` and [dnsPromises.setDefaultResultOrder()](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnspromisessetdefaultresultorderorder)
		have higher priority than [`--dns-result-order`](https://nodejs.org/docs/latest-v20.x/api/cli.html#--dns-result-orderorder).
		When using [worker threads](https://nodejs.org/docs/latest-v20.x/api/worker_threads.html), [`dnsPromises.setDefaultResultOrder()`](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnspromisessetdefaultresultorderorder)
		from the main thread won't affect the default dns orders in workers.
	**/
	static function setDefaultResultOrder(order:String):Void;
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