package ts.lib.intl;
@:native("Intl.Collator") extern class Collator {
	function new(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:CollatorOptions);
	function compare(x:String, y:String):Float;
	function resolvedOptions():ResolvedCollatorOptions;
	@:selfCall
	static function call(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:CollatorOptions):ICollator;
	static function supportedLocalesOf(locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:CollatorOptions):std.Array<String>;
}