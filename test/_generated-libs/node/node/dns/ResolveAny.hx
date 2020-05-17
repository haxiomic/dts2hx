package node.dns;

@:jsRequire("dns", "resolveAny") @valueModuleOnly extern class ResolveAny {
	@:selfCall
	static function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<AnyRecord>) -> Void):Void;
}