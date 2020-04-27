package node.dns;
@:jsRequire("dns", "resolveMx") @valueModuleOnly extern class ResolveMx {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<MxRecord>>;
}