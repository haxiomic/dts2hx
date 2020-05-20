package global.three;

@:native("THREE.MOUSE") @:enum extern abstract MOUSE(Int) from Int to Int {
	var LEFT;
	var MIDDLE;
	var RIGHT;
	var ROTATE;
	var DOLLY;
	var PAN;
}