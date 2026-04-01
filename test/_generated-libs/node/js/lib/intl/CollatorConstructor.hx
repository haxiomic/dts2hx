package js.lib.intl;

typedef CollatorConstructor = {
	@:overload(function(?locales:LocalesArgument, ?options:js.lib.intl.Collator.CollatorOptions):js.lib.intl.Collator { })
	@:selfCall
	function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.Collator.CollatorOptions):js.lib.intl.Collator;
	@:overload(function(locales:LocalesArgument, ?options:js.lib.intl.Collator.CollatorOptions):Array<String> { })
	function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.Collator.CollatorOptions):Array<String>;
};