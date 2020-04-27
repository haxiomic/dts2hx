package node.dns;
@:jsRequire("dns", "resolveAny") @valueModuleOnly extern class ResolveAny {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<haxe.extern.EitherType<AnyARecord, haxe.extern.EitherType<AnyAaaaRecord, haxe.extern.EitherType<AnyCnameRecord, haxe.extern.EitherType<AnyMxRecord, haxe.extern.EitherType<AnyNaptrRecord, haxe.extern.EitherType<AnyNsRecord, haxe.extern.EitherType<AnyPtrRecord, haxe.extern.EitherType<AnySoaRecord, haxe.extern.EitherType<AnySrvRecord, AnyTxtRecord>>>>>>>>>>>;
}