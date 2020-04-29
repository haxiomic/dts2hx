package node.dns;
@:jsRequire("dns", "Resolver") extern class Resolver {
	var getServers : () -> std.Array<String>;
	var setServers : (servers:std.Array<String>) -> Void;
	var resolve : {
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<MxRecord>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<NaptrRecord>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:SoaRecord) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<SrvRecord>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<SoaRecord, haxe.extern.EitherType<std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>, haxe.extern.EitherType<std.Array<MxRecord>, haxe.extern.EitherType<std.Array<NaptrRecord>, haxe.extern.EitherType<std.Array<SrvRecord>, std.Array<std.Array<String>>>>>>>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	};
	var resolve4 : {
		@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<RecordWithTtl>) -> Void):Void { })
		@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, std.Array<RecordWithTtl>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	};
	var resolve6 : {
		@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<RecordWithTtl>) -> Void):Void { })
		@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, std.Array<RecordWithTtl>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	};
	var resolveAny : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>) -> Void) -> Void;
	var resolveCname : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void) -> Void;
	var resolveMx : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<MxRecord>) -> Void) -> Void;
	var resolveNaptr : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<NaptrRecord>) -> Void) -> Void;
	var resolveNs : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void) -> Void;
	var resolvePtr : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void) -> Void;
	var resolveSoa : (hostname:String, callback:(err:global.nodejs.ErrnoException, address:SoaRecord) -> Void) -> Void;
	var resolveSrv : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<SrvRecord>) -> Void) -> Void;
	var resolveTxt : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void) -> Void;
	var reverse : (ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:std.Array<String>) -> Void) -> Void;
	function cancel():Void;
}