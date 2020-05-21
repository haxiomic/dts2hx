package three;

@:jsRequire("three", "HemisphereLightProbe") extern class HemisphereLightProbe extends LightProbe {
	function new(?skyColor:ts.AnyOf3<String, Float, Color>, ?groundColor:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	var isHemisphereLightProbe : Bool;
	function applyQuaternion(quaternion:Quaternion):HemisphereLightProbe;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):HemisphereLightProbe;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):HemisphereLightProbe;
	function rotateX(angle:Float):HemisphereLightProbe;
	function rotateY(angle:Float):HemisphereLightProbe;
	function rotateZ(angle:Float):HemisphereLightProbe;
	function translateOnAxis(axis:Vector3, distance:Float):HemisphereLightProbe;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):HemisphereLightProbe;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):HemisphereLightProbe;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):HemisphereLightProbe;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):HemisphereLightProbe;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):HemisphereLightProbe;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):HemisphereLightProbe;
	function clone(?recursive:Bool):HemisphereLightProbe;
	function copy(source:HemisphereLightProbe, ?recursive:Bool):HemisphereLightProbe;
	static var prototype : HemisphereLightProbe;
}