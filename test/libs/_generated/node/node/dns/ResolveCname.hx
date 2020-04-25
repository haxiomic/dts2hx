package node.dns;
@:jsRequire("dns", "resolveCname") extern class ResolveCname {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>;
}