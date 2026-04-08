package js.lib.intl;

typedef LocaleOptions = {
	/**
		A string containing the language, and the script and region if available.
	**/
	@:optional
	var baseName : String;
	/**
		The part of the Locale that indicates the locale's calendar era.
	**/
	@:optional
	var calendar : String;
	/**
		Flag that defines whether case is taken into account for the locale's collation rules.
	**/
	@:optional
	var caseFirst : LocaleCollationCaseFirst;
	/**
		The collation type used for sorting
	**/
	@:optional
	var collation : String;
	/**
		The time keeping format convention used by the locale.
	**/
	@:optional
	var hourCycle : LocaleHourCycleKey;
	/**
		The primary language subtag associated with the locale.
	**/
	@:optional
	var language : String;
	/**
		The numeral system used by the locale.
	**/
	@:optional
	var numberingSystem : String;
	/**
		Flag that defines whether the locale has special collation handling for numeric characters.
	**/
	@:optional
	var numeric : Bool;
	/**
		The region of the world (usually a country) associated with the locale. Possible values are region codes as defined by ISO 3166-1.
	**/
	@:optional
	var region : String;
	/**
		The script used for writing the particular language used in the locale. Possible values are script codes as defined by ISO 15924.
	**/
	@:optional
	var script : String;
};