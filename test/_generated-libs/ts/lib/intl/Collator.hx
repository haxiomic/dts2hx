package ts.lib.intl;
@:native("Intl.Collator") extern class Collator {
	function new(?locales:ts.AnyOf2<String, Array<String>>, ?options:CollatorOptions);
	function compare(x:String, y:String):Float;
	function resolvedOptions():ResolvedCollatorOptions;
	@:selfCall
	static function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:CollatorOptions):Collator;
	static function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:CollatorOptions):Array<String>;
}