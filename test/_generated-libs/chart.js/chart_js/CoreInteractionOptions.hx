package chart_js;

typedef CoreInteractionOptions = {
	/**
		Sets which elements appear in the tooltip. See Interaction Modes for details.
	**/
	var mode : String;
	/**
		if true, the hover mode only applies when the mouse position intersects an item on the chart.
	**/
	var intersect : Bool;
	/**
		Can be set to 'x', 'y', or 'xy' to define which directions are used in calculating distances. Defaults to 'x' for 'index' mode and 'xy' in dataset and 'nearest' modes.
	**/
	var axis : String;
};