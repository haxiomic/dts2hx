package node.dns;

/**
	Uses the DNS protocol to resolve pointer records (`PTR` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
	be an array of strings containing the reply records.
**/
@:jsRequire("dns", "resolvePtr") @valueModuleOnly extern class ResolvePtr {
	/**
		Uses the DNS protocol to resolve pointer records (`PTR` records) for the `hostname`. The `addresses` argument passed to the `callback` function will
		be an array of strings containing the reply records.
	**/
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
}