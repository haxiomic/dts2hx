package global;

@:native("qs") @valueModuleOnly extern class Qs {
	static function stringify(obj:Dynamic, ?options:global.qs.IStringifyOptions):String;
	@:overload(function(str:String, ?options:global.qs.IParseOptions):{ } { })
	static function parse(str:String, ?options:Dynamic):global.qs.ParsedQs;
}