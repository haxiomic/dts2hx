package js.lib.intl;
extern interface NumberFormatOptions {
	@:optional
	var localeMatcher : Null<String>;
	@:optional
	var style : Null<String>;
	@:optional
	var currency : Null<String>;
	@:optional
	var currencyDisplay : Null<String>;
	@:optional
	var useGrouping : Null<Bool>;
	@:optional
	var minimumIntegerDigits : Null<Float>;
	@:optional
	var minimumFractionDigits : Null<Float>;
	@:optional
	var maximumFractionDigits : Null<Float>;
	@:optional
	var minimumSignificantDigits : Null<Float>;
	@:optional
	var maximumSignificantDigits : Null<Float>;
}