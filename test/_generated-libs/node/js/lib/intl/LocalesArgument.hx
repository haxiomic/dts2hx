package js.lib.intl;

/**
	The locale or locales to use
	
	See [MDN - Intl - locales argument](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl#locales_argument).
**/
typedef LocalesArgument = Null<ts.AnyOf3<String, Locale, haxe.ds.ReadOnlyArray<ts.AnyOf2<String, Locale>>>>;