package js.lib.intl;
@:native("Intl.Collator") @:interface extern class Collator {
	function new(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:CollatorOptions);
	function compare(x:String, y:String):Float;
	function resolvedOptions():ResolvedCollatorOptions;
	@:selfCall
	static function call(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:CollatorOptions):Collator;
	static function supportedLocalesOf(locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:CollatorOptions):std.Array<String>;
}