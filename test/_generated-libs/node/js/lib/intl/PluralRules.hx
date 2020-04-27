package js.lib.intl;
@:native("Intl.PluralRules") @tsInterface extern class PluralRules {
	function new(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:PluralRulesOptions);
	function resolvedOptions():ResolvedPluralRulesOptions;
	function select(n:Float):String;
	@:selfCall
	static function call(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:PluralRulesOptions):PluralRules;
	static function supportedLocalesOf(locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:PluralRulesOptions):std.Array<String>;
}