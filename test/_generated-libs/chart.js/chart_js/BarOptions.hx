package chart_js;

typedef BarOptions = {
	/**
		The base value for the bar in data units along the value axis.
	**/
	var base : Float;
	/**
		Skipped (excluded) border: 'start', 'end', 'left',  'right', 'bottom', 'top' or false (none).
	**/
	var borderSkipped : ts.AnyOf2<Bool, String>;
	/**
		Border radius
	**/
	var borderRadius : ts.AnyOf2<Float, BorderRadius>;
	var borderWidth : Float;
	var borderColor : Color;
	var backgroundColor : Color;
};