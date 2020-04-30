package ts.lib.intl;
extern typedef IDateTimeFormat = {
	function format(?date:haxe.extern.EitherType<Float, ts.lib.IDate>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:haxe.extern.EitherType<Float, ts.lib.IDate>):std.Array<DateTimeFormatPart>;
};