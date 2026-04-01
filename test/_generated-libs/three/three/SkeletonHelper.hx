package three;

@:jsRequire("three", "SkeletonHelper") extern class SkeletonHelper extends LineSegments {
	function new(bone:Object3D);
	var bones : Array<Bone>;
	var root : Object3D;
	function getBoneList(object:Object3D):Array<Bone>;
	function update():Void;
	function computeLineDistances():SkeletonHelper;
	function applyQuaternion(quaternion:Quaternion):SkeletonHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SkeletonHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SkeletonHelper;
	function rotateX(angle:Float):SkeletonHelper;
	function rotateY(angle:Float):SkeletonHelper;
	function rotateZ(angle:Float):SkeletonHelper;
	function translateOnAxis(axis:Vector3, distance:Float):SkeletonHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):SkeletonHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):SkeletonHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):SkeletonHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):SkeletonHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):SkeletonHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):SkeletonHelper;
	function clone(?recursive:Bool):SkeletonHelper;
	function copy(source:SkeletonHelper, ?recursive:Bool):SkeletonHelper;
	static var prototype : SkeletonHelper;
}