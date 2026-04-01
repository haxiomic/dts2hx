package global.three;

@:native("THREE.SkinnedMesh") extern class SkinnedMesh extends Mesh {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>, ?useVertexTexture:Bool);
	var bindMode : String;
	var bindMatrix : Matrix4;
	var bindMatrixInverse : Matrix4;
	var skeleton : Skeleton;
	function bind(skeleton:Skeleton, ?bindMatrix:Matrix4):Void;
	function pose():Void;
	function normalizeSkinWeights():Void;
	function applyQuaternion(quaternion:Quaternion):SkinnedMesh;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SkinnedMesh;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SkinnedMesh;
	function rotateX(angle:Float):SkinnedMesh;
	function rotateY(angle:Float):SkinnedMesh;
	function rotateZ(angle:Float):SkinnedMesh;
	function translateOnAxis(axis:Vector3, distance:Float):SkinnedMesh;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):SkinnedMesh;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):SkinnedMesh;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):SkinnedMesh;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):SkinnedMesh;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):SkinnedMesh;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):SkinnedMesh;
	function clone(?recursive:Bool):SkinnedMesh;
	function copy(source:SkinnedMesh, ?recursive:Bool):SkinnedMesh;
	static var prototype : SkinnedMesh;
}