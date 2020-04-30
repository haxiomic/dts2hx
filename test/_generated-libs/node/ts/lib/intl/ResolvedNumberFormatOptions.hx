package ts.lib.intl;
extern typedef ResolvedNumberFormatOptions = {
	var locale : String;
	var numberingSystem : String;
	var style : String;
	@:optional
	var currency : String;
	@:optional
	var currencyDisplay : String;
	var minimumIntegerDigits : Float;
	var minimumFractionDigits : Float;
	var maximumFractionDigits : Float;
	@:optional
	var minimumSignificantDigits : Float;
	@:optional
	var maximumSignificantDigits : Float;
	var useGrouping : Bool;
};