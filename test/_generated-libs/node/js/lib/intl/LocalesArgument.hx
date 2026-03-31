package js.lib.intl;

/**
	The locale(s) to use
	
	[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#locales_argument).
**/
typedef LocalesArgument = Null<ts.AnyOf3<String, Locale, haxe.ds.ReadOnlyArray<ts.AnyOf2<String, Locale>>>>;