package three;

@:jsRequire("three", "MOUSE") extern enum abstract MOUSE(Int) from Int to Int {
	var LEFT;
	var MIDDLE;
	var RIGHT;
	var ROTATE;
	var DOLLY;
	var PAN;
}