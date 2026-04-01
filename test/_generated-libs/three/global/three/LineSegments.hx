package global.three;

@:native("THREE.LineSegments") extern class LineSegments extends Line {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>, ?mode:Float);
	var isLineSegments : Bool;
	function computeLineDistances():LineSegments;
	function applyQuaternion(quaternion:Quaternion):LineSegments;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LineSegments;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LineSegments;
	function rotateX(angle:Float):LineSegments;
	function rotateY(angle:Float):LineSegments;
	function rotateZ(angle:Float):LineSegments;
	function translateOnAxis(axis:Vector3, distance:Float):LineSegments;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):LineSegments;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):LineSegments;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):LineSegments;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):LineSegments;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):LineSegments;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):LineSegments;
	function clone(?recursive:Bool):LineSegments;
	function copy(source:LineSegments, ?recursive:Bool):LineSegments;
	static var prototype : LineSegments;
}