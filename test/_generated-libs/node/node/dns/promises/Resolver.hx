package node.dns.promises;

/**
	An independent resolver for DNS requests.
	
	Creating a new resolver uses the default server settings. Setting
	the servers used for a resolver using [`resolver.setServers()`](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnspromisessetserversservers) does not affect
	other resolvers:
	
	```js
	import dns from 'node:dns';
	const { Resolver } = dns.promises;
	const resolver = new Resolver();
	resolver.setServers(['4.4.4.4']);
	
	// This request will use the server at 4.4.4.4, independent of global settings.
	resolver.resolve4('example.org').then((addresses) => {
	  // ...
	});
	
	// Alternatively, the same code can be written using async-await style.
	(async function() {
	  const addresses = await resolver.resolve4('example.org');
	})();
	```
	
	The following methods from the `dnsPromises` API are available:
	
	* `resolver.getServers()`
	* `resolver.resolve()`
	* `resolver.resolve4()`
	* `resolver.resolve6()`
	* `resolver.resolveAny()`
	* `resolver.resolveCaa()`
	* `resolver.resolveCname()`
	* `resolver.resolveMx()`
	* `resolver.resolveNaptr()`
	* `resolver.resolveNs()`
	* `resolver.resolvePtr()`
	* `resolver.resolveSoa()`
	* `resolver.resolveSrv()`
	* `resolver.resolveTxt()`
	* `resolver.reverse()`
	* `resolver.setServers()`
**/
@:jsRequire("dns", "promises.Resolver") extern class Resolver {
	function new(?options:node.dns.ResolverOptions);
	/**
		Cancel all outstanding DNS queries made by this resolver. The corresponding
		callbacks will be called with an error with code `ECANCELLED`.
	**/
	function cancel():Void;
	dynamic function getServers():Array<String>;
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.AnyRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.CaaRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.MxRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.NaptrRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<node.dns.SoaRecord> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.SrvRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<Array<String>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<ts.AnyOf8<Array<String>, Array<Array<String>>, node.dns.SoaRecord, Array<node.dns.AnyRecord>, Array<node.dns.CaaRecord>, Array<node.dns.MxRecord>, Array<node.dns.NaptrRecord>, Array<node.dns.SrvRecord>>> { })
	dynamic function resolve(hostname:String):js.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions):js.lib.Promise<Array<node.dns.RecordWithTtl>> { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>> { })
	dynamic function resolve4(hostname:String):js.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions):js.lib.Promise<Array<node.dns.RecordWithTtl>> { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>> { })
	dynamic function resolve6(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolveAny(hostname:String):js.lib.Promise<Array<node.dns.AnyRecord>>;
	dynamic function resolveCaa(hostname:String):js.lib.Promise<Array<node.dns.CaaRecord>>;
	dynamic function resolveCname(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolveMx(hostname:String):js.lib.Promise<Array<node.dns.MxRecord>>;
	dynamic function resolveNaptr(hostname:String):js.lib.Promise<Array<node.dns.NaptrRecord>>;
	dynamic function resolveNs(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolvePtr(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolveSoa(hostname:String):js.lib.Promise<node.dns.SoaRecord>;
	dynamic function resolveSrv(hostname:String):js.lib.Promise<Array<node.dns.SrvRecord>>;
	dynamic function resolveTxt(hostname:String):js.lib.Promise<Array<Array<String>>>;
	dynamic function reverse(ip:String):js.lib.Promise<Array<String>>;
	/**
		The resolver instance will send its requests from the specified IP address.
		This allows programs to specify outbound interfaces when used on multi-homed
		systems.
		
		If a v4 or v6 address is not specified, it is set to the default and the
		operating system will choose a local address automatically.
		
		The resolver will use the v4 local address when making requests to IPv4 DNS
		servers, and the v6 local address when making requests to IPv6 DNS servers.
		The `rrtype` of resolution requests has no impact on the local address used.
	**/
	function setLocalAddress(?ipv4:String, ?ipv6:String):Void;
	dynamic function setServers(servers:haxe.ds.ReadOnlyArray<String>):Void;
	static var prototype : Resolver;
}