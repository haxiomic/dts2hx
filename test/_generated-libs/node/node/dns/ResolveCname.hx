package node.dns;

/**
	Uses the DNS protocol to resolve `CNAME` records for the `hostname`. The `addresses` argument passed to the `callback` function
	will contain an array of canonical name records available for the `hostname` (e.g. `['bar.example.com']`).
**/
@:jsRequire("dns", "resolveCname") @valueModuleOnly extern class ResolveCname {
	/**
		Uses the DNS protocol to resolve `CNAME` records for the `hostname`. The `addresses` argument passed to the `callback` function
		will contain an array of canonical name records available for the `hostname` (e.g. `['bar.example.com']`).
	**/
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
}