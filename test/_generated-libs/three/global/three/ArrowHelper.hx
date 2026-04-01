package global.three;

@:native("THREE.ArrowHelper") extern class ArrowHelper extends Object3D {
	function new(dir:Vector3, ?origin:Vector3, ?length:Float, ?hex:Float, ?headLength:Float, ?headWidth:Float);
	var line : Line;
	var cone : Mesh;
	function setDirection(dir:Vector3):Void;
	function setLength(length:Float, ?headLength:Float, ?headWidth:Float):Void;
	function setColor(color:ts.AnyOf3<String, Float, Color>):Void;
	function applyQuaternion(quaternion:Quaternion):ArrowHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):ArrowHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):ArrowHelper;
	function rotateX(angle:Float):ArrowHelper;
	function rotateY(angle:Float):ArrowHelper;
	function rotateZ(angle:Float):ArrowHelper;
	function translateOnAxis(axis:Vector3, distance:Float):ArrowHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):ArrowHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):ArrowHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):ArrowHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):ArrowHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):ArrowHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):ArrowHelper;
	function clone(?recursive:Bool):ArrowHelper;
	function copy(source:ArrowHelper, ?recursive:Bool):ArrowHelper;
	static var prototype : ArrowHelper;
}