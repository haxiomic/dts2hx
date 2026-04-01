package global.three;

@:native("THREE.FaceNormalsHelper") extern class FaceNormalsHelper extends LineSegments {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float);
	var object : Object3D;
	var size : Float;
	function update(?object:Object3D):Void;
	function computeLineDistances():FaceNormalsHelper;
	function applyQuaternion(quaternion:Quaternion):FaceNormalsHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):FaceNormalsHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):FaceNormalsHelper;
	function rotateX(angle:Float):FaceNormalsHelper;
	function rotateY(angle:Float):FaceNormalsHelper;
	function rotateZ(angle:Float):FaceNormalsHelper;
	function translateOnAxis(axis:Vector3, distance:Float):FaceNormalsHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):FaceNormalsHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):FaceNormalsHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):FaceNormalsHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):FaceNormalsHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):FaceNormalsHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):FaceNormalsHelper;
	function clone(?recursive:Bool):FaceNormalsHelper;
	function copy(source:FaceNormalsHelper, ?recursive:Bool):FaceNormalsHelper;
	static var prototype : FaceNormalsHelper;
}