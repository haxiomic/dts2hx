package three;

@:jsRequire("three", "GridHelper") extern class GridHelper extends LineSegments {
	function new(size:Float, divisions:Float, ?color1:ts.AnyOf2<Float, Color>, ?color2:ts.AnyOf2<Float, Color>);
	function setColors(?color1:ts.AnyOf2<Float, Color>, ?color2:ts.AnyOf2<Float, Color>):Void;
	function computeLineDistances():GridHelper;
	function applyQuaternion(quaternion:Quaternion):GridHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):GridHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):GridHelper;
	function rotateX(angle:Float):GridHelper;
	function rotateY(angle:Float):GridHelper;
	function rotateZ(angle:Float):GridHelper;
	function translateOnAxis(axis:Vector3, distance:Float):GridHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):GridHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):GridHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):GridHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):GridHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):GridHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):GridHelper;
	function clone(?recursive:Bool):GridHelper;
	function copy(source:GridHelper, ?recursive:Bool):GridHelper;
	static var prototype : GridHelper;
}