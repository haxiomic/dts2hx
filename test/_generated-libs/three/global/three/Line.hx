package global.three;

@:native("THREE.Line") extern class Line extends Object3D {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>, ?mode:Float);
	var geometry : ts.AnyOf2<Geometry, BufferGeometry>;
	var material : ts.AnyOf2<Material, Array<Material>>;
	var isLine : Bool;
	function computeLineDistances():Line;
	function applyQuaternion(quaternion:Quaternion):Line;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Line;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Line;
	function rotateX(angle:Float):Line;
	function rotateY(angle:Float):Line;
	function rotateZ(angle:Float):Line;
	function translateOnAxis(axis:Vector3, distance:Float):Line;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Line;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Line;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Line;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Line;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Line;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Line;
	function clone(?recursive:Bool):Line;
	function copy(source:Line, ?recursive:Bool):Line;
	static var prototype : Line;
}