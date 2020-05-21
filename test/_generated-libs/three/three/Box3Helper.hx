package three;

@:jsRequire("three", "Box3Helper") extern class Box3Helper extends LineSegments {
	function new(box:Box3, ?color:Color);
	var box : Box3;
	function computeLineDistances():Box3Helper;
	function applyQuaternion(quaternion:Quaternion):Box3Helper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Box3Helper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Box3Helper;
	function rotateX(angle:Float):Box3Helper;
	function rotateY(angle:Float):Box3Helper;
	function rotateZ(angle:Float):Box3Helper;
	function translateOnAxis(axis:Vector3, distance:Float):Box3Helper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Box3Helper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Box3Helper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Box3Helper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Box3Helper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Box3Helper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Box3Helper;
	function clone(?recursive:Bool):Box3Helper;
	function copy(source:Box3Helper, ?recursive:Bool):Box3Helper;
	static var prototype : Box3Helper;
}