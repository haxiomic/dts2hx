package three;

@:jsRequire("three", "HemisphereLightHelper") extern class HemisphereLightHelper extends Object3D {
	function new(light:HemisphereLight, size:Float, ?color:ts.AnyOf3<String, Float, Color>);
	var light : HemisphereLight;
	var material : MeshBasicMaterial;
	var color : Null<ts.AnyOf3<String, Float, Color>>;
	function dispose():Void;
	function update():Void;
	function applyQuaternion(quaternion:Quaternion):HemisphereLightHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):HemisphereLightHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):HemisphereLightHelper;
	function rotateX(angle:Float):HemisphereLightHelper;
	function rotateY(angle:Float):HemisphereLightHelper;
	function rotateZ(angle:Float):HemisphereLightHelper;
	function translateOnAxis(axis:Vector3, distance:Float):HemisphereLightHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):HemisphereLightHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):HemisphereLightHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):HemisphereLightHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):HemisphereLightHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):HemisphereLightHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):HemisphereLightHelper;
	function clone(?recursive:Bool):HemisphereLightHelper;
	function copy(source:HemisphereLightHelper, ?recursive:Bool):HemisphereLightHelper;
	static var prototype : HemisphereLightHelper;
}