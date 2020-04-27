package node.dns;
@:jsRequire("dns", "resolveTxt") extern class ResolveTxt {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<std.Array<String>>>;
}