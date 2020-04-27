package node.dns;
@:jsRequire("dns", "resolveTxt") @valueModuleOnly extern class ResolveTxt {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<std.Array<String>>>;
}