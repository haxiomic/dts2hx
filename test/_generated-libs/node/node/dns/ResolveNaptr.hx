package node.dns;

@:jsRequire("dns", "resolveNaptr") @valueModuleOnly extern class ResolveNaptr {
	@:selfCall
	static function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<NaptrRecord>) -> Void):Void;
}