package node.dns;
@:jsRequire("dns", "resolvePtr") @valueModuleOnly extern class ResolvePtr {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>;
}