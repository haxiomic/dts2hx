package node.dns;
@:jsRequire("dns", "resolve") extern class Resolve {
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<MxRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<NaptrRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<SoaRecord> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<SrvRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<std.Array<std.Array<String>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<SoaRecord, haxe.extern.EitherType<std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>, haxe.extern.EitherType<std.Array<MxRecord>, haxe.extern.EitherType<std.Array<NaptrRecord>, haxe.extern.EitherType<std.Array<SrvRecord>, std.Array<std.Array<String>>>>>>>>> { })
	static function __promisify__(hostname:String, ?rrtype:String):js.lib.Promise<std.Array<String>>;
}