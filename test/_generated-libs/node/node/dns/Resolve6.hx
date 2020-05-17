package node.dns;

@:jsRequire("dns", "resolve6") @valueModuleOnly extern class Resolve6 {
	@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
	@:selfCall
	static function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
}