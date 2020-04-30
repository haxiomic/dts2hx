package ts.lib.intl;
extern typedef NumberFormatOptions = {
	@:optional
	var localeMatcher : String;
	@:optional
	var style : String;
	@:optional
	var currency : String;
	@:optional
	var currencyDisplay : String;
	@:optional
	var useGrouping : Bool;
	@:optional
	var minimumIntegerDigits : Float;
	@:optional
	var minimumFractionDigits : Float;
	@:optional
	var maximumFractionDigits : Float;
	@:optional
	var minimumSignificantDigits : Float;
	@:optional
	var maximumSignificantDigits : Float;
};