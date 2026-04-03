package node.dns;

/**
	Uses the DNS protocol to resolve text queries (`TXT` records) for the `hostname`. The `records` argument passed to the `callback` function is a
	two-dimensional array of the text records available for `hostname` (e.g.`[ ['v=spf1 ip4:0.0.0.0 ', '~all' ] ]`). Each sub-array contains TXT chunks of
	one record. Depending on the use case, these could be either joined together or
	treated separately.
**/
@:jsRequire("dns", "resolveTxt") @valueModuleOnly extern class ResolveTxt {
	/**
		Uses the DNS protocol to resolve text queries (`TXT` records) for the `hostname`. The `records` argument passed to the `callback` function is a
		two-dimensional array of the text records available for `hostname` (e.g.`[ ['v=spf1 ip4:0.0.0.0 ', '~all' ] ]`). Each sub-array contains TXT chunks of
		one record. Depending on the use case, these could be either joined together or
		treated separately.
	**/
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<Array<String>>) -> Void):Void;
}