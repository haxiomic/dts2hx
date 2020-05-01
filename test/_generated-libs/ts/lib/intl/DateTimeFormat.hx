package ts.lib.intl;
@:native("Intl.DateTimeFormat") extern class DateTimeFormat {
	function new(?locales:ts.AnyOf2<String, std.Array<String>>, ?options:DateTimeFormatOptions);
	function format(?date:ts.AnyOf2<Float, ts.lib.IDate>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:ts.AnyOf2<Float, ts.lib.IDate>):std.Array<DateTimeFormatPart>;
	@:selfCall
	static function call(?locales:ts.AnyOf2<String, std.Array<String>>, ?options:DateTimeFormatOptions):IDateTimeFormat;
	static function supportedLocalesOf(locales:ts.AnyOf2<String, std.Array<String>>, ?options:DateTimeFormatOptions):std.Array<String>;
}