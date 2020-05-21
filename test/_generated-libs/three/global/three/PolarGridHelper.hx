package global.three;

@:native("THREE.PolarGridHelper") extern class PolarGridHelper extends LineSegments {
	function new(radius:Float, radials:Float, circles:Float, divisions:Float, color1:Null<ts.AnyOf3<String, Float, Color>>, color2:Null<ts.AnyOf3<String, Float, Color>>);
	function computeLineDistances():PolarGridHelper;
	function applyQuaternion(quaternion:Quaternion):PolarGridHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PolarGridHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PolarGridHelper;
	function rotateX(angle:Float):PolarGridHelper;
	function rotateY(angle:Float):PolarGridHelper;
	function rotateZ(angle:Float):PolarGridHelper;
	function translateOnAxis(axis:Vector3, distance:Float):PolarGridHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):PolarGridHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):PolarGridHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):PolarGridHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):PolarGridHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):PolarGridHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):PolarGridHelper;
	function clone(?recursive:Bool):PolarGridHelper;
	function copy(source:PolarGridHelper, ?recursive:Bool):PolarGridHelper;
	static var prototype : PolarGridHelper;
}