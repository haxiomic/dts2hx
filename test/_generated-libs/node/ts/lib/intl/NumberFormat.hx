package ts.lib.intl;
@:native("Intl.NumberFormat") extern class NumberFormat {
	function new(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:NumberFormatOptions);
	function format(value:Float):String;
	function resolvedOptions():ResolvedNumberFormatOptions;
	function formatToParts(?number:Float):std.Array<NumberFormatPart>;
	@:selfCall
	static function call(?locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:NumberFormatOptions):INumberFormat;
	static function supportedLocalesOf(locales:haxe.extern.EitherType<String, std.Array<String>>, ?options:NumberFormatOptions):std.Array<String>;
}