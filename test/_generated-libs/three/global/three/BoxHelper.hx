package global.three;

@:native("THREE.BoxHelper") extern class BoxHelper extends LineSegments {
	function new(object:Object3D, ?color:Color);
	function update(?object:Object3D):Void;
	function computeLineDistances():BoxHelper;
	function applyQuaternion(quaternion:Quaternion):BoxHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):BoxHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):BoxHelper;
	function rotateX(angle:Float):BoxHelper;
	function rotateY(angle:Float):BoxHelper;
	function rotateZ(angle:Float):BoxHelper;
	function translateOnAxis(axis:Vector3, distance:Float):BoxHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):BoxHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):BoxHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):BoxHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):BoxHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):BoxHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):BoxHelper;
	function clone(?recursive:Bool):BoxHelper;
	function copy(source:BoxHelper, ?recursive:Bool):BoxHelper;
	static var prototype : BoxHelper;
}