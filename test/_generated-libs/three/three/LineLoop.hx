package three;

@:jsRequire("three", "LineLoop") extern class LineLoop extends Line {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>);
	var isLineLoop : Bool;
	function computeLineDistances():LineLoop;
	function applyQuaternion(quaternion:Quaternion):LineLoop;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LineLoop;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LineLoop;
	function rotateX(angle:Float):LineLoop;
	function rotateY(angle:Float):LineLoop;
	function rotateZ(angle:Float):LineLoop;
	function translateOnAxis(axis:Vector3, distance:Float):LineLoop;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):LineLoop;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):LineLoop;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):LineLoop;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):LineLoop;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):LineLoop;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):LineLoop;
	function clone(?recursive:Bool):LineLoop;
	function copy(source:LineLoop, ?recursive:Bool):LineLoop;
	static var prototype : LineLoop;
}