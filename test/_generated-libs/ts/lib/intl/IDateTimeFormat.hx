package ts.lib.intl;
typedef IDateTimeFormat = {
	function format(?date:ts.AnyOf2<Float, ts.lib.IDate>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:ts.AnyOf2<Float, ts.lib.IDate>):std.Array<DateTimeFormatPart>;
};