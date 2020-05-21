package three;

@:jsRequire("three", "SpotLightHelper") extern class SpotLightHelper extends Object3D {
	function new(light:Light, ?color:ts.AnyOf3<String, Float, Color>);
	var light : Light;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	var cone : LineSegments;
	function dispose():Void;
	function update():Void;
	function applyQuaternion(quaternion:Quaternion):SpotLightHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SpotLightHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SpotLightHelper;
	function rotateX(angle:Float):SpotLightHelper;
	function rotateY(angle:Float):SpotLightHelper;
	function rotateZ(angle:Float):SpotLightHelper;
	function translateOnAxis(axis:Vector3, distance:Float):SpotLightHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):SpotLightHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):SpotLightHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):SpotLightHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):SpotLightHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):SpotLightHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):SpotLightHelper;
	function clone(?recursive:Bool):SpotLightHelper;
	function copy(source:SpotLightHelper, ?recursive:Bool):SpotLightHelper;
	static var prototype : SpotLightHelper;
}