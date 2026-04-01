package global.three;

@:native("THREE.PlaneHelper") extern class PlaneHelper extends LineSegments {
	function new(plane:Plane, ?size:Float, ?hex:Float);
	var plane : Plane;
	var size : Float;
	function computeLineDistances():PlaneHelper;
	function applyQuaternion(quaternion:Quaternion):PlaneHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PlaneHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PlaneHelper;
	function rotateX(angle:Float):PlaneHelper;
	function rotateY(angle:Float):PlaneHelper;
	function rotateZ(angle:Float):PlaneHelper;
	function translateOnAxis(axis:Vector3, distance:Float):PlaneHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):PlaneHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):PlaneHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):PlaneHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):PlaneHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):PlaneHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):PlaneHelper;
	function clone(?recursive:Bool):PlaneHelper;
	function copy(source:PlaneHelper, ?recursive:Bool):PlaneHelper;
	static var prototype : PlaneHelper;
}