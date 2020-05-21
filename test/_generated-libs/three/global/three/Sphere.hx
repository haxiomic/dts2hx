package global.three;

@:native("THREE.Sphere") extern class Sphere {
	function new(?center:Vector3, ?radius:Float);
	var center : Vector3;
	var radius : Float;
	function set(center:Vector3, radius:Float):Sphere;
	function setFromPoints(points:Array<Vector3>, ?optionalCenter:Vector3):Sphere;
	function clone():Sphere;
	function copy(sphere:Sphere):Sphere;
	function empty():Bool;
	function containsPoint(point:Vector3):Bool;
	function distanceToPoint(point:Vector3):Float;
	function intersectsSphere(sphere:Sphere):Bool;
	function intersectsBox(box:Box3):Bool;
	function intersectsPlane(plane:Plane):Bool;
	function clampPoint(point:Vector3, target:Vector3):Vector3;
	function getBoundingBox(target:Box3):Box3;
	function applyMatrix4(matrix:Matrix4):Sphere;
	function translate(offset:Vector3):Sphere;
	function equals(sphere:Sphere):Bool;
	static var prototype : Sphere;
}