package global.three;

@:native("THREE.MOUSE") extern enum abstract MOUSE(Int) from Int to Int {
	final LEFT;
	final MIDDLE;
	final RIGHT;
	final ROTATE;
	final DOLLY;
	final PAN;
}