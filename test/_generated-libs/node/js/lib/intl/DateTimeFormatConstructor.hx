package js.lib.intl;

typedef DateTimeFormatConstructor = {
	@:overload(function(?locales:LocalesArgument, ?options:js.lib.intl.DateTimeFormat.DateTimeFormatOptions):js.lib.intl.DateTimeFormat { })
	@:selfCall
	function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.DateTimeFormat.DateTimeFormatOptions):js.lib.intl.DateTimeFormat;
	@:overload(function(locales:LocalesArgument, ?options:js.lib.intl.DateTimeFormat.DateTimeFormatOptions):Array<String> { })
	function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.DateTimeFormat.DateTimeFormatOptions):Array<String>;
	final prototype : js.lib.intl.DateTimeFormat;
};