package chart_js;

typedef ArcOptions = {
	/**
		Arc stroke alignment.
	**/
	var borderAlign : String;
	/**
		Arc offset (in pixels).
	**/
	var offset : Float;
	/**
		Sets the border radius for arcs
	**/
	var borderRadius : ts.AnyOf2<Float, ArcBorderRadius>;
	var borderWidth : Float;
	var borderColor : Color;
	var backgroundColor : Color;
};