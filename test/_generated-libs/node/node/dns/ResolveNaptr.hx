package node.dns;
@:jsRequire("dns", "resolveNaptr") @valueModuleOnly extern class ResolveNaptr {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<NaptrRecord>>;
}