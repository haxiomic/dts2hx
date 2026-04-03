package node.dns;

/**
	Uses the DNS protocol to resolve IPv6 addresses (`AAAA` records) for the `hostname`. The `addresses` argument passed to the `callback` function
	will contain an array of IPv6 addresses.
**/
@:jsRequire("dns", "resolve6") @valueModuleOnly extern class Resolve6 {
	/**
		Uses the DNS protocol to resolve IPv6 addresses (`AAAA` records) for the `hostname`. The `addresses` argument passed to the `callback` function
		will contain an array of IPv6 addresses.
	**/
	@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
}