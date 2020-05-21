package three;

@:jsRequire("three", "Cylindrical") extern class Cylindrical {
	function new(?radius:Float, ?theta:Float, ?y:Float);
	var radius : Float;
	var theta : Float;
	var y : Float;
	function clone():Cylindrical;
	function copy(other:Cylindrical):Cylindrical;
	function set(radius:Float, theta:Float, y:Float):Cylindrical;
	function setFromVector3(vec3:Vector3):Cylindrical;
	function setFromCartesianCoords(x:Float, y:Float, z:Float):Cylindrical;
	static var prototype : Cylindrical;
}