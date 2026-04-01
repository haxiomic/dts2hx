package three;

@:jsRequire("three", "PathActions") extern enum abstract PathActions(Int) from Int to Int {
	var MOVE_TO;
	var LINE_TO;
	var QUADRATIC_CURVE_TO;
	var BEZIER_CURVE_TO;
	var CSPLINE_THRU;
	var ARC;
	var ELLIPSE;
}