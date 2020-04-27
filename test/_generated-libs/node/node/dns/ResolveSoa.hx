package node.dns;
@:jsRequire("dns", "resolveSoa") extern class ResolveSoa {
	static function __promisify__(hostname:String):js.lib.Promise<SoaRecord>;
}