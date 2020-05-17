package node.dns;

@:jsRequire("dns", "resolveCname") @valueModuleOnly extern class ResolveCname {
	@:selfCall
	static function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
}