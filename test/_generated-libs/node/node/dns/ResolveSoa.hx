package node.dns;
@:jsRequire("dns", "resolveSoa") @valueModuleOnly extern class ResolveSoa {
	static function __promisify__(hostname:String):js.lib.Promise<SoaRecord>;
}