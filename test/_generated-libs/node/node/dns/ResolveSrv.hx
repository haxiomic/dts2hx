package node.dns;
@:jsRequire("dns", "resolveSrv") extern class ResolveSrv {
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<SrvRecord>>;
}