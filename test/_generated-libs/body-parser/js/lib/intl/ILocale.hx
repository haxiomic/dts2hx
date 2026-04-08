package js.lib.intl;

/**
	Constructor creates [Intl.Locale](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl/Locale)
	objects
**/
typedef ILocale = {
	/**
		A string containing the language, and the script and region if available.
	**/
	var baseName : String;
	/**
		The primary language subtag associated with the locale.
	**/
	var language : String;
	/**
		Gets the most likely values for the language, script, and region of the locale based on existing values.
	**/
	function maximize():Locale;
	/**
		Attempts to remove information about the locale that would be added by calling `Locale.maximize()`.
	**/
	function minimize():Locale;
	/**
		Returns the locale's full locale identifier string.
	**/
	function toString():String;
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