package ts.lib.intl;
typedef IDateTimeFormat = {
	function format(?date:ts.AnyOf2<Float, ts.lib.Date_>):String;
	function resolvedOptions():ResolvedDateTimeFormatOptions;
	function formatToParts(?date:ts.AnyOf2<Float, ts.lib.Date_>):Array<DateTimeFormatPart>;
};