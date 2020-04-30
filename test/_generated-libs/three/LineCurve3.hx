package three;
@:jsRequire("three", "LineCurve3") extern class LineCurve3 extends Curve<Vector3> {
	function new(v1:Vector3, v2:Vector3);
	var v1 : Vector3;
	var v2 : Vector3;
}