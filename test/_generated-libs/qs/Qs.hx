@:jsRequire("qs") @valueModuleOnly extern class Qs {
	static function stringify(obj:Dynamic, ?options:qs.IStringifyOptions):String;
	@:overload(function(str:String, ?options:qs.IParseOptions):haxe.DynamicAccess<qs.PoorMansUnknown> { })
	static function parse(str:String, ?options:Dynamic):qs.ParsedQs;
}