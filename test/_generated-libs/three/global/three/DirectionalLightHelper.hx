package global.three;

@:native("THREE.DirectionalLightHelper") extern class DirectionalLightHelper extends Object3D {
	function new(light:DirectionalLight, ?size:Float, ?color:ts.AnyOf3<String, Float, Color>);
	var light : DirectionalLight;
	var lightPlane : Line;
	var targetPlane : Line;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function dispose():Void;
	function update():Void;
	function applyQuaternion(quaternion:Quaternion):DirectionalLightHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):DirectionalLightHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):DirectionalLightHelper;
	function rotateX(angle:Float):DirectionalLightHelper;
	function rotateY(angle:Float):DirectionalLightHelper;
	function rotateZ(angle:Float):DirectionalLightHelper;
	function translateOnAxis(axis:Vector3, distance:Float):DirectionalLightHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):DirectionalLightHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):DirectionalLightHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):DirectionalLightHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):DirectionalLightHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):DirectionalLightHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):DirectionalLightHelper;
	function clone(?recursive:Bool):DirectionalLightHelper;
	function copy(source:DirectionalLightHelper, ?recursive:Bool):DirectionalLightHelper;
	static var prototype : DirectionalLightHelper;
}