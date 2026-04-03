@:jsRequire("qs") @valueModuleOnly extern class Qs {
	static function stringify(obj:Dynamic, ?options:qs.IStringifyOptions<qs.BooleanOptional>):String;
	@:overload(function(str:ts.AnyOf2<String, haxe.DynamicAccess<String>>, ?options:qs.IParseOptions<qs.BooleanOptional>):haxe.DynamicAccess<Any> { })
	static function parse(str:String, ?options:Dynamic):qs.ParsedQs;
}