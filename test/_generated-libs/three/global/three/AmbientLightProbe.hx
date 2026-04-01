package global.three;

@:native("THREE.AmbientLightProbe") extern class AmbientLightProbe extends LightProbe {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	var isAmbientLightProbe : Bool;
	function applyQuaternion(quaternion:Quaternion):AmbientLightProbe;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):AmbientLightProbe;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):AmbientLightProbe;
	function rotateX(angle:Float):AmbientLightProbe;
	function rotateY(angle:Float):AmbientLightProbe;
	function rotateZ(angle:Float):AmbientLightProbe;
	function translateOnAxis(axis:Vector3, distance:Float):AmbientLightProbe;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):AmbientLightProbe;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):AmbientLightProbe;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):AmbientLightProbe;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):AmbientLightProbe;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):AmbientLightProbe;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):AmbientLightProbe;
	function clone(?recursive:Bool):AmbientLightProbe;
	function copy(source:AmbientLightProbe, ?recursive:Bool):AmbientLightProbe;
	static var prototype : AmbientLightProbe;
}