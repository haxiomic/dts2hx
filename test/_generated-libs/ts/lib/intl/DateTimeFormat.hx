package ts.lib.intl;
@:native("Intl.DateTimeFormat") extern class DateTimeFormat {
	function new(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:DateTimeFormatOptions);
	function format(?date:haxe.extern.EitherType<Float, ts.lib.IDate>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:haxe.extern.EitherType<Float, ts.lib.IDate>):std.Array<DateTimeFormatPart>;
	@:selfCall
	static function call(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:DateTimeFormatOptions):IDateTimeFormat;
	static function supportedLocalesOf(locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:DateTimeFormatOptions):std.Array<String>;
}