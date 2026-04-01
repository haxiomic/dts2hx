package node.dns;

@:jsRequire("dns", "Resolver") extern class Resolver {
	function new();
	dynamic function getServers():Array<String>;
	dynamic function setServers(servers:Array<String>):Void;
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<AnyRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<MxRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<NaptrRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:SoaRecord) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<SrvRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<Array<String>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf7<Array<String>, Array<Array<String>>, SoaRecord, Array<AnyRecord>, Array<MxRecord>, Array<NaptrRecord>, Array<SrvRecord>>) -> Void):Void { })
	dynamic function resolve(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
	dynamic function resolve4(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
	dynamic function resolve6(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	dynamic function resolveAny(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<AnyRecord>) -> Void):Void;
	dynamic function resolveCname(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	dynamic function resolveMx(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<MxRecord>) -> Void):Void;
	dynamic function resolveNaptr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<NaptrRecord>) -> Void):Void;
	dynamic function resolveNs(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	dynamic function resolvePtr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	dynamic function resolveSoa(hostname:String, callback:(err:global.nodejs.ErrnoException, address:SoaRecord) -> Void):Void;
	dynamic function resolveSrv(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<SrvRecord>) -> Void):Void;
	dynamic function resolveTxt(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<Array<String>>) -> Void):Void;
	dynamic function reverse(ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:Array<String>) -> Void):Void;
	function cancel():Void;
	static var prototype : Resolver;
}