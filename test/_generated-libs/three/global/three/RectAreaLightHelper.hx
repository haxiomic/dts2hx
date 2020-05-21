package global.three;

@:native("THREE.RectAreaLightHelper") extern class RectAreaLightHelper extends Line {
	function new(light:RectAreaLight, ?color:ts.AnyOf3<String, Float, Color>);
	var light : RectAreaLight;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function update():Void;
	function dispose():Void;
	function computeLineDistances():RectAreaLightHelper;
	function applyQuaternion(quaternion:Quaternion):RectAreaLightHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):RectAreaLightHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):RectAreaLightHelper;
	function rotateX(angle:Float):RectAreaLightHelper;
	function rotateY(angle:Float):RectAreaLightHelper;
	function rotateZ(angle:Float):RectAreaLightHelper;
	function translateOnAxis(axis:Vector3, distance:Float):RectAreaLightHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):RectAreaLightHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):RectAreaLightHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):RectAreaLightHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):RectAreaLightHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):RectAreaLightHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):RectAreaLightHelper;
	function clone(?recursive:Bool):RectAreaLightHelper;
	function copy(source:RectAreaLightHelper, ?recursive:Bool):RectAreaLightHelper;
	static var prototype : RectAreaLightHelper;
}