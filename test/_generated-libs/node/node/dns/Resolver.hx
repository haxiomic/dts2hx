package node.dns;

/**
	An independent resolver for DNS requests.
	
	Creating a new resolver uses the default server settings. Setting
	the servers used for a resolver using [`resolver.setServers()`](https://nodejs.org/docs/latest-v20.x/api/dns.html#dnssetserversservers) does not affect
	other resolvers:
	
	```js
	import { Resolver } from 'node:dns';
	const resolver = new Resolver();
	resolver.setServers(['4.4.4.4']);
	
	// This request will use the server at 4.4.4.4, independent of global settings.
	resolver.resolve4('example.org', (err, addresses) => {
	  // ...
	});
	```
	
	The following methods from the `node:dns` module are available:
	
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
@:jsRequire("dns", "Resolver") extern class Resolver {
	function new(?options:ResolverOptions);
	/**
		Cancel all outstanding DNS queries made by this resolver. The corresponding
		callbacks will be called with an error with code `ECANCELLED`.
	**/
	function cancel():Void;
	dynamic function getServers():Array<String>;
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<AnyRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, address:Array<CaaRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<MxRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<NaptrRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:SoaRecord) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<SrvRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<Array<String>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf8<Array<String>, Array<Array<String>>, SoaRecord, Array<AnyRecord>, Array<CaaRecord>, Array<MxRecord>, Array<NaptrRecord>, Array<SrvRecord>>) -> Void):Void { })
	dynamic function resolve(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
	dynamic function resolve4(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
	dynamic function resolve6(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	dynamic function resolveAny(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<AnyRecord>) -> Void):Void;
	dynamic function resolveCaa(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, records:Array<CaaRecord>) -> Void):Void;
	dynamic function resolveCname(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	dynamic function resolveMx(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<MxRecord>) -> Void):Void;
	dynamic function resolveNaptr(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<NaptrRecord>) -> Void):Void;
	dynamic function resolveNs(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	dynamic function resolvePtr(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
	dynamic function resolveSoa(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, address:SoaRecord) -> Void):Void;
	dynamic function resolveSrv(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<SrvRecord>) -> Void):Void;
	dynamic function resolveTxt(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<Array<String>>) -> Void):Void;
	dynamic function reverse(ip:String, callback:(err:Null<global.nodejs.ErrnoException>, hostnames:Array<String>) -> Void):Void;
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