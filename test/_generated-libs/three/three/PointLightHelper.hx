package three;

@:jsRequire("three", "PointLightHelper") extern class PointLightHelper extends Object3D {
	function new(light:PointLight, ?sphereSize:Float, ?color:ts.AnyOf3<String, Float, Color>);
	var light : PointLight;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function dispose():Void;
	function update():Void;
	function applyQuaternion(quaternion:Quaternion):PointLightHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PointLightHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PointLightHelper;
	function rotateX(angle:Float):PointLightHelper;
	function rotateY(angle:Float):PointLightHelper;
	function rotateZ(angle:Float):PointLightHelper;
	function translateOnAxis(axis:Vector3, distance:Float):PointLightHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):PointLightHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):PointLightHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):PointLightHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):PointLightHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):PointLightHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):PointLightHelper;
	function clone(?recursive:Bool):PointLightHelper;
	function copy(source:PointLightHelper, ?recursive:Bool):PointLightHelper;
	static var prototype : PointLightHelper;
}