package js.html;

/**
	The **`CSSFontPaletteValuesRule`** interface represents an
**/
typedef ICSSFontPaletteValuesRule = {
	/**
		The read-only **`basePalette`** property of the CSSFontPaletteValuesRule interface indicates the base palette associated with the rule.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule/basePalette)
	**/
	final basePalette : String;
	/**
		The read-only **`fontFamily`** property of the CSSFontPaletteValuesRule interface lists the font families the rule can be applied to.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule/fontFamily)
	**/
	final fontFamily : String;
	/**
		The read-only **`name`** property of the CSSFontPaletteValuesRule interface represents the name identifying the associated
	**/
	final name : String;
	/**
		The read-only **`overrideColors`** property of the CSSFontPaletteValuesRule interface is a string containing a list of color index and color pair that are to be used instead.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule/overrideColors)
	**/
	final overrideColors : String;
	/**
		The **`cssText`** property of the CSSRule interface returns the actual text of a CSSStyleSheet style-rule.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRule/cssText)
	**/
	var cssText : String;
	/**
		The **`parentRule`** property of the CSSRule interface returns the containing rule of the current rule if this exists, or otherwise returns null.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRule/parentRule)
	**/
	final parentRule : Null<js.html.CSSRule>;
	/**
		The **`parentStyleSheet`** property of the the current rule is defined.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRule/parentStyleSheet)
	**/
	final parentStyleSheet : Null<js.html.CSSStyleSheet>;
	/**
		The read-only **`type`** property of the indicating which type of rule the CSSRule represents.
	**/
	final type : Float;
	final STYLE_RULE : Int;
	final CHARSET_RULE : Int;
	final IMPORT_RULE : Int;
	final MEDIA_RULE : Int;
	final FONT_FACE_RULE : Int;
	final PAGE_RULE : Int;
	final NAMESPACE_RULE : Int;
	final KEYFRAMES_RULE : Int;
	final KEYFRAME_RULE : Int;
	final SUPPORTS_RULE : Int;
	final COUNTER_STYLE_RULE : Int;
	final FONT_FEATURE_VALUES_RULE : Int;
};