package node.dns;

@:jsRequire("dns", "lookup") @valueModuleOnly extern class Lookup {
	@:overload(function(hostname:String, options:LookupOneOptions, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, options:LookupAllOptions, callback:(err:global.nodejs.ErrnoException, addresses:Array<LookupAddress>) -> Void):Void { })
	@:overload(function(hostname:String, options:LookupOptions, callback:(err:global.nodejs.ErrnoException, address:ts.AnyOf2<String, Array<LookupAddress>>, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	@:selfCall
	static function call(hostname:String, family:Float, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void;
}