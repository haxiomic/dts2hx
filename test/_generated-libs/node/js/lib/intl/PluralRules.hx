package js.lib.intl;
@:native("Intl.PluralRules") extern class PluralRules {
	function new(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:PluralRulesOptions);
	function resolvedOptions():ResolvedPluralRulesOptions;
	function select(n:Float):String;
	@:selfCall
	static function call(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:PluralRulesOptions):IPluralRules;
	static function supportedLocalesOf(locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:PluralRulesOptions):std.Array<String>;
}