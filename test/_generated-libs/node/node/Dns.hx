package node;

@:jsRequire("dns") @valueModuleOnly extern class Dns {
	@:overload(function(hostname:String, options:node.dns.LookupOneOptions, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupAllOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.LookupAddress>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupOptions, callback:(err:global.nodejs.ErrnoException, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	static function lookup(hostname:String, family:Float, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void;
	static function lookupService(address:String, port:Float, callback:(err:global.nodejs.ErrnoException, hostname:String, service:String) -> Void):Void;
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.AnyRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.MxRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.NaptrRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:node.dns.SoaRecord) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.SrvRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<Array<String>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf7<Array<String>, Array<Array<String>>, node.dns.SoaRecord, Array<node.dns.AnyRecord>, Array<node.dns.MxRecord>, Array<node.dns.NaptrRecord>, Array<node.dns.SrvRecord>>) -> Void):Void { })
	static function resolve(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve4(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve6(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	static function resolveCname(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	static function resolveMx(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.MxRecord>) -> Void):Void;
	static function resolveNaptr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.NaptrRecord>) -> Void):Void;
	static function resolveNs(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	static function resolvePtr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	static function resolveSoa(hostname:String, callback:(err:global.nodejs.ErrnoException, address:node.dns.SoaRecord) -> Void):Void;
	static function resolveSrv(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.SrvRecord>) -> Void):Void;
	static function resolveTxt(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<Array<String>>) -> Void):Void;
	static function resolveAny(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<node.dns.AnyRecord>) -> Void):Void;
	static function reverse(ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:Array<String>) -> Void):Void;
	static function setServers(servers:Array<String>):Void;
	static function getServers():Array<String>;
	static final ADDRCONFIG : Float;
	static final V4MAPPED : Float;
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