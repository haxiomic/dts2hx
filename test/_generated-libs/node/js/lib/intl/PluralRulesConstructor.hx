package js.lib.intl;

typedef PluralRulesConstructor = {
	@:overload(function(?locales:LocalesArgument, ?options:js.lib.intl.PluralRules.PluralRulesOptions):js.lib.intl.PluralRules { })
	@:selfCall
	function call(?locales:ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>, ?options:js.lib.intl.PluralRules.PluralRulesOptions):js.lib.intl.PluralRules;
	@:overload(function(locales:LocalesArgument, ?options:{ @:optional var localeMatcher : String; }):Array<String> { })
	function supportedLocalesOf(locales:ts.AnyOf2<String, haxe.ds.ReadOnlyArray<String>>, ?options:{ @:optional var localeMatcher : String; }):Array<String>;
};