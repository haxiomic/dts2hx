package three;

@:jsRequire("three", "Mesh") extern class Mesh extends Object3D {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>);
	var geometry : ts.AnyOf2<Geometry, BufferGeometry>;
	var material : ts.AnyOf2<Material, Array<Material>>;
	var drawMode : TrianglesDrawModes;
	@:optional
	var morphTargetInfluences : Array<Float>;
	@:optional
	var morphTargetDictionary : haxe.DynamicAccess<Float>;
	var isMesh : Bool;
	function setDrawMode(drawMode:TrianglesDrawModes):Void;
	function updateMorphTargets():Void;
	function applyQuaternion(quaternion:Quaternion):Mesh;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Mesh;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Mesh;
	function rotateX(angle:Float):Mesh;
	function rotateY(angle:Float):Mesh;
	function rotateZ(angle:Float):Mesh;
	function translateOnAxis(axis:Vector3, distance:Float):Mesh;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Mesh;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Mesh;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Mesh;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Mesh;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Mesh;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Mesh;
	function clone(?recursive:Bool):Mesh;
	function copy(source:Mesh, ?recursive:Bool):Mesh;
	static var prototype : Mesh;
}