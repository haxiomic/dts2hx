package three;

/**
	Affects objects using
	{@link
	MeshLambertMaterial
	}
	or
	{@link
	MeshPhongMaterial
	}
	.
**/
@:jsRequire("three", "PointLight") extern class PointLight extends Light {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float, ?distance:Float, ?decay:Float);
	/**
		If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
		Default — 0.0.
	**/
	var distance : Float;
	var decay : Float;
	var power : Float;
	function applyQuaternion(quaternion:Quaternion):PointLight;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PointLight;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PointLight;
	function rotateX(angle:Float):PointLight;
	function rotateY(angle:Float):PointLight;
	function rotateZ(angle:Float):PointLight;
	function translateOnAxis(axis:Vector3, distance:Float):PointLight;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):PointLight;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):PointLight;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):PointLight;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):PointLight;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):PointLight;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):PointLight;
	function clone(?recursive:Bool):PointLight;
	function copy(source:PointLight, ?recursive:Bool):PointLight;
	static var prototype : PointLight;
}