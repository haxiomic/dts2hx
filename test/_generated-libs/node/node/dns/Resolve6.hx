package node.dns;
@:jsRequire("dns", "resolve6") @valueModuleOnly extern class Resolve6 {
	@:overload(function(hostname:String, options:ResolveWithTtlOptions):js.lib.Promise<std.Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, ?options:ResolveOptions):js.lib.Promise<haxe.extern.EitherType<std.Array<String>, std.Array<RecordWithTtl>>> { })
	static function __promisify__(hostname:String):js.lib.Promise<std.Array<String>>;
}