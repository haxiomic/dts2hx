package node.dns;

@:jsRequire("dns", "resolve") @valueModuleOnly extern class Resolve {
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<AnyRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<MxRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<NaptrRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:SoaRecord) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<SrvRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<Array<String>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf7<Array<String>, Array<Array<String>>, SoaRecord, Array<AnyRecord>, Array<MxRecord>, Array<NaptrRecord>, Array<SrvRecord>>) -> Void):Void { })
	@:selfCall
	static function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:Array<String>) -> Void):Void;
}