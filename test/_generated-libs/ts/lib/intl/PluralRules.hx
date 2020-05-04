package ts.lib.intl;
@:native("Intl.PluralRules") extern class PluralRules {
	function new(?locales:ts.AnyOf2<String, Array<String>>, ?options:PluralRulesOptions);
	function resolvedOptions():ResolvedPluralRulesOptions;
	function select(n:Float):String;
	@:selfCall
	static function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:PluralRulesOptions):IPluralRules;
	static function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:PluralRulesOptions):Array<String>;
}