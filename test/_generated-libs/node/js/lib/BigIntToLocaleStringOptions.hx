package js.lib;

typedef BigIntToLocaleStringOptions = {
	/**
		The locale matching algorithm to use.The default is "best fit". For information about this option, see the
		{@link
		https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation Intl page
		}
		.
	**/
	@:optional
	var localeMatcher : String;
	/**
		The formatting style to use , the default is "decimal".
	**/
	@:optional
	var style : String;
	@:optional
	var numberingSystem : String;
	/**
		The unit to use in unit formatting, Possible values are core unit identifiers, defined in UTS #35, Part 2, Section 6. A subset of units from the full list was selected for use in ECMAScript. Pairs of simple units can be concatenated with "-per-" to make a compound unit. There is no default value; if the style is "unit", the unit property must be provided.
	**/
	@:optional
	var unit : String;
	/**
		The unit formatting style to use in unit formatting, the defaults is "short".
	**/
	@:optional
	var unitDisplay : String;
	/**
		The currency to use in currency formatting. Possible values are the ISO 4217 currency codes, such as "USD" for the US dollar, "EUR" for the euro, or "CNY" for the Chinese RMB — see the Current currency & funds code list. There is no default value; if the style is "currency", the currency property must be provided. It is only used when [[Style]] has the value "currency".
	**/
	@:optional
	var currency : String;
	/**
		How to display the currency in currency formatting. It is only used when [[Style]] has the value "currency". The default is "symbol".
		
		"symbol" to use a localized currency symbol such as €,
		
		"code" to use the ISO currency code,
		
		"name" to use a localized currency name such as "dollar"
	**/
	@:optional
	var currencyDisplay : String;
	/**
		Whether to use grouping separators, such as thousands separators or thousand/lakh/crore separators. The default is true.
	**/
	@:optional
	var useGrouping : Bool;
	/**
		The minimum number of integer digits to use. Possible values are from 1 to 21; the default is 1.
	**/
	@:optional
	var minimumIntegerDigits : Int;
	/**
		The minimum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number and percent formatting is 0; the default for currency formatting is the number of minor unit digits provided by the
		{@link
		http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list
		}
		(2 if the list doesn't provide that information).
	**/
	@:optional
	var minimumFractionDigits : Int;
	/**
		The maximum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number formatting is the larger of minimumFractionDigits and 3; the default for currency formatting is the larger of minimumFractionDigits and the number of minor unit digits provided by the
		{@link
		http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list
		}
		(2 if the list doesn't provide that information); the default for percent formatting is the larger of minimumFractionDigits and 0.
	**/
	@:optional
	var maximumFractionDigits : Int;
	/**
		The minimum number of significant digits to use. Possible values are from 1 to 21; the default is 1.
	**/
	@:optional
	var minimumSignificantDigits : Int;
	/**
		The maximum number of significant digits to use. Possible values are from 1 to 21; the default is 21.
	**/
	@:optional
	var maximumSignificantDigits : Int;
	/**
		The formatting that should be displayed for the number, the defaults is "standard"
		
		    "standard" plain number formatting
		
		    "scientific" return the order-of-magnitude for formatted number.
		
		    "engineering" return the exponent of ten when divisible by three
		
		    "compact" string representing exponent, defaults is using the "short" form
	**/
	@:optional
	var notation : String;
	/**
		used only when notation is "compact"
	**/
	@:optional
	var compactDisplay : String;
};