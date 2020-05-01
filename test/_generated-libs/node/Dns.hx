package node;
@:jsRequire("dns") @valueModuleOnly extern class Dns {
	@:overload(function(hostname:String, options:node.dns.LookupOneOptions, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupAllOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.LookupAddress>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupOptions, callback:(err:global.nodejs.ErrnoException, address:ts.AnyOf2<String, std.Array<node.dns.LookupAddress>>, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	static function lookup(hostname:String, family:Float, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void;
	static function lookupService(address:String, port:Float, callback:(err:global.nodejs.ErrnoException, hostname:String, service:String) -> Void):Void;
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<ts.AnyOf10<node.dns.AnyARecord, node.dns.AnyAaaaRecord, node.dns.AnyCnameRecord, node.dns.AnyMxRecord, node.dns.AnyNaptrRecord, node.dns.AnyNsRecord, node.dns.AnyPtrRecord, node.dns.AnySoaRecord, node.dns.AnySrvRecord, node.dns.AnyTxtRecord>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.MxRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.NaptrRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:node.dns.SoaRecord) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.SrvRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf7<std.Array<String>, node.dns.SoaRecord, std.Array<ts.AnyOf10<node.dns.AnyARecord, node.dns.AnyAaaaRecord, node.dns.AnyCnameRecord, node.dns.AnyMxRecord, node.dns.AnyNaptrRecord, node.dns.AnyNsRecord, node.dns.AnyPtrRecord, node.dns.AnySoaRecord, node.dns.AnySrvRecord, node.dns.AnyTxtRecord>>, std.Array<node.dns.MxRecord>, std.Array<node.dns.NaptrRecord>, std.Array<node.dns.SrvRecord>, std.Array<std.Array<String>>>) -> Void):Void { })
	static function resolve(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<std.Array<String>, std.Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve4(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<std.Array<String>, std.Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve6(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolveCname(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolveMx(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.MxRecord>) -> Void):Void;
	static function resolveNaptr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.NaptrRecord>) -> Void):Void;
	static function resolveNs(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolvePtr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolveSoa(hostname:String, callback:(err:global.nodejs.ErrnoException, address:node.dns.SoaRecord) -> Void):Void;
	static function resolveSrv(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.SrvRecord>) -> Void):Void;
	static function resolveTxt(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void):Void;
	static function resolveAny(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<ts.AnyOf10<node.dns.AnyARecord, node.dns.AnyAaaaRecord, node.dns.AnyCnameRecord, node.dns.AnyMxRecord, node.dns.AnyNaptrRecord, node.dns.AnyNsRecord, node.dns.AnyPtrRecord, node.dns.AnySoaRecord, node.dns.AnySrvRecord, node.dns.AnyTxtRecord>>) -> Void):Void;
	static function reverse(ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:std.Array<String>) -> Void):Void;
	static function setServers(servers:std.Array<String>):Void;
	static function getServers():std.Array<String>;
	static var ADDRCONFIG : Float;
	static var V4MAPPED : Float;
	static var NODATA : String;
	static var FORMERR : String;
	static var SERVFAIL : String;
	static var NOTFOUND : String;
	static var NOTIMP : String;
	static var REFUSED : String;
	static var BADQUERY : String;
	static var BADNAME : String;
	static var BADFAMILY : String;
	static var BADRESP : String;
	static var CONNREFUSED : String;
	static var TIMEOUT : String;
	static var EOF : String;
	static var FILE : String;
	static var NOMEM : String;
	static var DESTRUCTION : String;
	static var BADSTR : String;
	static var BADFLAGS : String;
	static var NONAME : String;
	static var BADHINTS : String;
	static var NOTINITIALIZED : String;
	static var LOADIPHLPAPI : String;
	static var ADDRGETNETWORKPARAMS : String;
	static var CANCELLED : String;
}