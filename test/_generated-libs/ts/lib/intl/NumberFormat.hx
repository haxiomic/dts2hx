package ts.lib.intl;
@:native("Intl.NumberFormat") extern class NumberFormat {
	function new(?locales:ts.AnyOf2<String, Array<String>>, ?options:NumberFormatOptions);
	function format(value:Float):String;
	function resolvedOptions():ResolvedNumberFormatOptions;
	function formatToParts(?number:Float):Array<NumberFormatPart>;
	@:selfCall
	static function call(?locales:ts.AnyOf2<String, Array<String>>, ?options:NumberFormatOptions):INumberFormat;
	static function supportedLocalesOf(locales:ts.AnyOf2<String, Array<String>>, ?options:NumberFormatOptions):Array<String>;
}