package ts.lib.intl;
typedef INumberFormat = {
	function format(value:Float):String;
	function resolvedOptions():ResolvedNumberFormatOptions;
	function formatToParts(?number:Float):std.Array<NumberFormatPart>;
};