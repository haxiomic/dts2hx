package global.three;

/**
	A point light that can cast shadow in one direction.
**/
@:native("THREE.SpotLight") extern class SpotLight extends Light {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float, ?distance:Float, ?angle:Float, ?exponent:Float, ?decay:Float);
	/**
		Spotlight focus points at target.position.
		Default position — (0,0,0).
	**/
	var target : Object3D;
	/**
		If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
		Default — 0.0.
	**/
	var distance : Float;
	var angle : Float;
	/**
		Rapidity of the falloff of light from its target direction.
		Default — 10.0.
	**/
	var exponent : Float;
	var decay : Float;
	var power : Float;
	var penumbra : Float;
	function applyQuaternion(quaternion:Quaternion):SpotLight;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SpotLight;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SpotLight;
	function rotateX(angle:Float):SpotLight;
	function rotateY(angle:Float):SpotLight;
	function rotateZ(angle:Float):SpotLight;
	function translateOnAxis(axis:Vector3, distance:Float):SpotLight;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):SpotLight;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):SpotLight;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):SpotLight;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):SpotLight;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):SpotLight;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):SpotLight;
	function clone(?recursive:Bool):SpotLight;
	function copy(source:SpotLight, ?recursive:Bool):SpotLight;
	static var prototype : SpotLight;
}