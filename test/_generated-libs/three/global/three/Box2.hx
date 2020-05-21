package global.three;

@:native("THREE.Box2") extern class Box2 {
	function new(?min:Vector2, ?max:Vector2);
	var max : Vector2;
	var min : Vector2;
	function set(min:Vector2, max:Vector2):Box2;
	function setFromPoints(points:Array<Vector2>):Box2;
	function setFromCenterAndSize(center:Vector2, size:Vector2):Box2;
	function clone():Box2;
	function copy(box:Box2):Box2;
	function makeEmpty():Box2;
	function isEmpty():Bool;
	function getCenter(target:Vector2):Vector2;
	function getSize(target:Vector2):Vector2;
	function expandByPoint(point:Vector2):Box2;
	function expandByVector(vector:Vector2):Box2;
	function expandByScalar(scalar:Float):Box2;
	function containsPoint(point:Vector2):Bool;
	function containsBox(box:Box2):Bool;
	function getParameter(point:Vector2):Vector2;
	function intersectsBox(box:Box2):Bool;
	function clampPoint(point:Vector2, target:Vector2):Vector2;
	function distanceToPoint(point:Vector2):Float;
	function intersect(box:Box2):Box2;
	function union(box:Box2):Box2;
	function translate(offset:Vector2):Box2;
	function equals(box:Box2):Bool;
	function empty():Dynamic;
	function isIntersectionBox(b:Dynamic):Dynamic;
	static var prototype : Box2;
}