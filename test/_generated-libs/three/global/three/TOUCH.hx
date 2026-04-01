package global.three;

@:native("THREE.TOUCH") extern enum abstract TOUCH(Int) from Int to Int {
	final ROTATE;
	final PAN;
	final DOLLY_PAN;
	final DOLLY_ROTATE;
}