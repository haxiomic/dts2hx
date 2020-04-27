package node.dns;
@:jsRequire("dns", "Resolver") extern class Resolver {
	var getServers : () -> std.Array<String>;
	var setServers : (servers:std.Array<String>) -> Void;
	var resolve : { @:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
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
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void; @:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<MxRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<NaptrRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<SoaRecord> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<SrvRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<std.Array<String>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<SoaRecord, haxe.extern.EitherType<std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>, haxe.extern.EitherType<std.Array<MxRecord>, haxe.extern.EitherType<std.Array<NaptrRecord>, haxe.extern.EitherType<std.Array<SrvRecord>, std.Array<std.Array<String>>>>>>>>> { })
	function __promisify__(hostname:String, ?rrtype:String):js.lib.Promise<std.Array<String>>; };
	var resolve4 : { @:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, std.Array<RecordWithTtl>>) -> Void):Void { })
	@:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void; @:overload(function(hostname:String, options:ResolveWithTtlOptions):js.lib.Promise<std.Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, ?options:ResolveOptions):js.lib.Promise<haxe.extern.EitherType<std.Array<String>, std.Array<RecordWithTtl>>> { })
	function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>; };
	var resolve6 : { @:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, std.Array<RecordWithTtl>>) -> Void):Void { })
	@:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void; @:overload(function(hostname:String, options:ResolveWithTtlOptions):js.lib.Promise<std.Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, ?options:ResolveOptions):js.lib.Promise<haxe.extern.EitherType<std.Array<String>, std.Array<RecordWithTtl>>> { })
	function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>; };
	var resolveAny : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>>; };
	var resolveCname : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>; };
	var resolveMx : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<MxRecord>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<MxRecord>>; };
	var resolveNaptr : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<NaptrRecord>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<NaptrRecord>>; };
	var resolveNs : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>; };
	var resolvePtr : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>; };
	var resolveSoa : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, address:SoaRecord) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<SoaRecord>; };
	var resolveSrv : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<SrvRecord>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<SrvRecord>>; };
	var resolveTxt : { @:selfCall
	function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void):Void; function __promisify__(hostname:String):js.lib.Promise<std.Array<std.Array<String>>>; };
	var reverse : (ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:std.Array<String>) -> Void) -> Void;
	function cancel():Void;
}