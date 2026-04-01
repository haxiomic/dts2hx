package js.lib.intl;

typedef NumberFormatConstructor = {
	@:overload(function(?locales:LocalesArgument, ?options:js.lib.intl.NumberFormat.NumberFormatOptions):js.lib.intl.NumberFormat { })
	@:selfCall
	function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.NumberFormat.NumberFormatOptions):js.lib.intl.NumberFormat;
	@:overload(function(locales:LocalesArgument, ?options:js.lib.intl.NumberFormat.NumberFormatOptions):Array<String> { })
	function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.NumberFormat.NumberFormatOptions):Array<String>;
	final prototype : js.lib.intl.NumberFormat;
};