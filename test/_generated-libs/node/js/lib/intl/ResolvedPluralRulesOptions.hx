package js.lib.intl;
extern interface ResolvedPluralRulesOptions {
	var locale : String;
	var pluralCategories : std.Array<String>;
	var type : String;
	var minimumIntegerDigits : Float;
	var minimumFractionDigits : Float;
	var maximumFractionDigits : Float;
	var minimumSignificantDigits : Float;
	var maximumSignificantDigits : Float;
}