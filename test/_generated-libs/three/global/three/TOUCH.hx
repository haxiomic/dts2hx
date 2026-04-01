package global.three;

@:native("THREE.TOUCH") extern enum abstract TOUCH(Int) from Int to Int {
	var ROTATE;
	var PAN;
	var DOLLY_PAN;
	var DOLLY_ROTATE;
}