package node.dns;
@:jsRequire("dns", "lookup") @valueModuleOnly extern class Lookup {
	@:overload(function(hostname:String, ?options:haxe.extern.EitherType<Float, LookupOneOptions>):js.lib.Promise<{ var address : String; var family : Float; }> { })
	@:overload(function(hostname:String, ?options:haxe.extern.EitherType<Float, LookupOptions>):js.lib.Promise<{ var address : haxe.extern.EitherType<String, std.Array<LookupAddress>>; @:optional
	var family : Float; }> { })
	static function __promisify__(hostname:String, options:LookupAllOptions):js.lib.Promise<{ var address : std.Array<LookupAddress>; }>;
}