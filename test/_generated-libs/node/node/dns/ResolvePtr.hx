package node.dns;

@:jsRequire("dns", "resolvePtr") @valueModuleOnly extern class ResolvePtr {
	@:selfCall
	static function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
}