package js.lib.intl;
@:native("Intl.DateTimeFormat") @tsInterface extern class DateTimeFormat {
	function new(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:DateTimeFormatOptions);
	function format(?date:haxe.extern.EitherType<Float, js.lib.Date>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:haxe.extern.EitherType<Float, js.lib.Date>):std.Array<DateTimeFormatPart>;
	@:selfCall
	static function call(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:DateTimeFormatOptions):DateTimeFormat;
	static function supportedLocalesOf(locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:DateTimeFormatOptions):std.Array<String>;
}