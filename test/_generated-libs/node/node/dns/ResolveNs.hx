package node.dns;

/**
	Uses the DNS protocol to resolve name server records (`NS` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
	contain an array of name server records available for `hostname` (e.g. `['ns1.example.com', 'ns2.example.com']`).
**/
@:jsRequire("dns", "resolveNs") @valueModuleOnly extern class ResolveNs {
	/**
		Uses the DNS protocol to resolve name server records (`NS` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
		contain an array of name server records available for `hostname` (e.g. `['ns1.example.com', 'ns2.example.com']`).
	**/
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
}