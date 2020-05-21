package three;

@:jsRequire("three", "VertexNormalsHelper") extern class VertexNormalsHelper extends LineSegments {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float);
	var object : Object3D;
	var size : Float;
	function update(?object:Object3D):Void;
	function computeLineDistances():VertexNormalsHelper;
	function applyQuaternion(quaternion:Quaternion):VertexNormalsHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):VertexNormalsHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):VertexNormalsHelper;
	function rotateX(angle:Float):VertexNormalsHelper;
	function rotateY(angle:Float):VertexNormalsHelper;
	function rotateZ(angle:Float):VertexNormalsHelper;
	function translateOnAxis(axis:Vector3, distance:Float):VertexNormalsHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):VertexNormalsHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):VertexNormalsHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):VertexNormalsHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):VertexNormalsHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):VertexNormalsHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):VertexNormalsHelper;
	function clone(?recursive:Bool):VertexNormalsHelper;
	function copy(source:VertexNormalsHelper, ?recursive:Bool):VertexNormalsHelper;
	static var prototype : VertexNormalsHelper;
}