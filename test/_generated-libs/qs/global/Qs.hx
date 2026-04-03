package global;

@:native("qs") @valueModuleOnly extern class Qs {
	static function stringify(obj:Dynamic, ?options:global.qs.IStringifyOptions<global.qs.BooleanOptional>):String;
	@:overload(function(str:ts.AnyOf2<String, haxe.DynamicAccess<String>>, ?options:global.qs.IParseOptions<global.qs.BooleanOptional>):haxe.DynamicAccess<Any> { })
	static function parse(str:String, ?options:Dynamic):global.qs.ParsedQs;
}