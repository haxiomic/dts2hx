package three;

/**
	Abstract base class for lights.
**/
@:jsRequire("three", "Light") extern class Light extends Object3D {
	function new(?hex:ts.AnyOf2<String, Float>, ?intensity:Float);
	var color : Color;
	var intensity : Float;
	var isLight : Bool;
	var shadow : LightShadow;
	var shadowCameraFov : Dynamic;
	var shadowCameraLeft : Dynamic;
	var shadowCameraRight : Dynamic;
	var shadowCameraTop : Dynamic;
	var shadowCameraBottom : Dynamic;
	var shadowCameraNear : Dynamic;
	var shadowCameraFar : Dynamic;
	var shadowBias : Dynamic;
	var shadowMapWidth : Dynamic;
	var shadowMapHeight : Dynamic;
	function applyQuaternion(quaternion:Quaternion):Light;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Light;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Light;
	function rotateX(angle:Float):Light;
	function rotateY(angle:Float):Light;
	function rotateZ(angle:Float):Light;
	function translateOnAxis(axis:Vector3, distance:Float):Light;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Light;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Light;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Light;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Light;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Light;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Light;
	function clone(?recursive:Bool):Light;
	function copy(source:Light, ?recursive:Bool):Light;
	static var prototype : Light;
}