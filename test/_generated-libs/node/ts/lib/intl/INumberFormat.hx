package ts.lib.intl;
extern typedef INumberFormat = {
	function format(value:Float):String;
	function resolvedOptions():ResolvedNumberFormatOptions;
	function formatToParts(?number:Float):std.Array<NumberFormatPart>;
};