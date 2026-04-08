package chart_js;

typedef TitleOptions = {
	/**
		Alignment of the title.
	**/
	var align : String;
	/**
		Is the title shown?
	**/
	var display : Bool;
	/**
		Position of title
	**/
	var position : String;
	/**
		Color of text
	**/
	var color : Color;
	var font : FontSpec;
	/**
		Marks that this box should take the full width/height of the canvas (moving other boxes). If set to `false`, places the box above/beside the
		chart area
	**/
	var fullSize : Bool;
	/**
		Adds padding above and below the title text if a single number is specified. It is also possible to change top and bottom padding separately.
	**/
	var padding : ts.AnyOf2<Float, {
		var top : Float;
		var bottom : Float;
	}>;
	/**
		Title text to display. If specified as an array, text is rendered on multiple lines.
	**/
	var text : ts.AnyOf2<String, Array<String>>;
};