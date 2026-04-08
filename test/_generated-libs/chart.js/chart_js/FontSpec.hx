package chart_js;

typedef FontSpec = {
	/**
		Default font family for all text, follows CSS font-family options.
	**/
	var family : String;
	/**
		Default font size (in px) for text. Does not apply to radialLinear scale point labels.
	**/
	var size : Float;
	/**
		Default font style. Does not apply to tooltip title or footer. Does not apply to chart title. Follows CSS font-style options (i.e. normal, italic, oblique, initial, inherit)
	**/
	var style : String;
	/**
		Default font weight (boldness). (see MDN).
	**/
	var weight : Null<String>;
	/**
		Height of an individual line of text (see MDN).
	**/
	var lineHeight : ts.AnyOf2<String, Float>;
};