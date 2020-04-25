package node.dns;
@:jsRequire("dns", "lookupService") extern class LookupService {
	static function __promisify__(address:String, port:Float):js.lib.Promise<{ var hostname : String; var service : String; }>;
}