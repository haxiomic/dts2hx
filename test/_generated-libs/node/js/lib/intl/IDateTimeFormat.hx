package js.lib.intl;
extern typedef IDateTimeFormat = {
	function format(?date:haxe.extern.EitherType<Float, js.lib.IDate>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:haxe.extern.EitherType<Float, js.lib.IDate>):std.Array<DateTimeFormatPart>;
};