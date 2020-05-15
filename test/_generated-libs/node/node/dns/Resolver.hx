package node.dns;
@:jsRequire("dns", "Resolver") extern class Resolver {
	var getServers : () -> Array<String>;
	var setServers : (servers:Array<String>) -> Void;
	var resolve : {
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
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf7<Array<String>, SoaRecord, Array<AnyRecord>, Array<MxRecord>, Array<NaptrRecord>, Array<SrvRecord>, Array<Array<String>>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	};
	var resolve4 : {
		@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<RecordWithTtl>) -> Void):Void { })
		@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	};
	var resolve6 : {
		@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<RecordWithTtl>) -> Void):Void { })
		@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
	};
	var resolveAny : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<AnyRecord>) -> Void) -> Void;
	var resolveCname : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void) -> Void;
	var resolveMx : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<MxRecord>) -> Void) -> Void;
	var resolveNaptr : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<NaptrRecord>) -> Void) -> Void;
	var resolveNs : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void) -> Void;
	var resolvePtr : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void) -> Void;
	var resolveSoa : (hostname:String, callback:(err:global.nodejs.ErrnoException, address:SoaRecord) -> Void) -> Void;
	var resolveSrv : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<SrvRecord>) -> Void) -> Void;
	var resolveTxt : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<Array<String>>) -> Void) -> Void;
	var reverse : (ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:Array<String>) -> Void) -> Void;
	function cancel():Void;
}