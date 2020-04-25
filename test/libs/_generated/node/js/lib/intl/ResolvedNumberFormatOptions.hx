package js.lib.intl;
extern interface ResolvedNumberFormatOptions {
	var locale : String;
	var numberingSystem : String;
	var style : String;
	@:optional
	var currency : Null<String>;
	@:optional
	var currencyDisplay : Null<String>;
	var minimumIntegerDigits : Float;
	var minimumFractionDigits : Float;
	var maximumFractionDigits : Float;
	@:optional
	var minimumSignificantDigits : Null<Float>;
	@:optional
	var maximumSignificantDigits : Null<Float>;
	var useGrouping : Bool;
}