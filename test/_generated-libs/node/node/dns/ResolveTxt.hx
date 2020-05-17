package node.dns;

@:jsRequire("dns", "resolveTxt") @valueModuleOnly extern class ResolveTxt {
	@:selfCall
	static function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<Array<String>>) -> Void):Void;
}