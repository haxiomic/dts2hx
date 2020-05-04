package ts.lib.intl;
@:native("Intl.DateTimeFormat") extern class DateTimeFormat {
	function new(?locales:ts.AnyOf2<String, Array<String>>, ?options:DateTimeFormatOptions);
	function format(?date:ts.AnyOf2<Float, ts.lib.IDate_>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:ts.AnyOf2<Float, ts.lib.IDate_>):Array<DateTimeFormatPart>;
	@:selfCall
	static function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:DateTimeFormatOptions):IDateTimeFormat;
	static function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:DateTimeFormatOptions):Array<String>;
}