package global.three;

@:native("THREE.LightProbe") extern class LightProbe extends Light {
	function new(?sh:SphericalHarmonics3, ?intensity:Float);
	var isLightProbe : Bool;
	var sh : SphericalHarmonics3;
	function applyQuaternion(quaternion:Quaternion):LightProbe;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LightProbe;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LightProbe;
	function rotateX(angle:Float):LightProbe;
	function rotateY(angle:Float):LightProbe;
	function rotateZ(angle:Float):LightProbe;
	function translateOnAxis(axis:Vector3, distance:Float):LightProbe;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):LightProbe;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):LightProbe;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):LightProbe;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):LightProbe;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):LightProbe;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):LightProbe;
	function clone(?recursive:Bool):LightProbe;
	function copy(source:LightProbe, ?recursive:Bool):LightProbe;
	static var prototype : LightProbe;
}