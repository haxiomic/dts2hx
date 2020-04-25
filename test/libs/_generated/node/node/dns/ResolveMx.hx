package node.dns;
@:jsRequire("dns", "resolveMx") extern class ResolveMx {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<MxRecord>>;
}