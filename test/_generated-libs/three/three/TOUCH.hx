package three;

@:jsRequire("three", "TOUCH") @:enum extern abstract TOUCH(Int) from Int to Int {
	var ROTATE;
	var PAN;
	var DOLLY_PAN;
	var DOLLY_ROTATE;
}