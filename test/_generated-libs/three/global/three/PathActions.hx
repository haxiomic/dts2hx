package global.three;

@:native("THREE.PathActions") extern enum abstract PathActions(Int) from Int to Int {
	final MOVE_TO;
	final LINE_TO;
	final QUADRATIC_CURVE_TO;
	final BEZIER_CURVE_TO;
	final CSPLINE_THRU;
	final ARC;
	final ELLIPSE;
}