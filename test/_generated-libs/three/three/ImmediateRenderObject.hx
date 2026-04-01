package three;

@:jsRequire("three", "ImmediateRenderObject") extern class ImmediateRenderObject extends Object3D {
	function new(material:Material);
	var material : Material;
	function render(renderCallback:haxe.Constraints.Function):Void;
	function applyQuaternion(quaternion:Quaternion):ImmediateRenderObject;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):ImmediateRenderObject;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):ImmediateRenderObject;
	function rotateX(angle:Float):ImmediateRenderObject;
	function rotateY(angle:Float):ImmediateRenderObject;
	function rotateZ(angle:Float):ImmediateRenderObject;
	function translateOnAxis(axis:Vector3, distance:Float):ImmediateRenderObject;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):ImmediateRenderObject;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):ImmediateRenderObject;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):ImmediateRenderObject;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):ImmediateRenderObject;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):ImmediateRenderObject;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):ImmediateRenderObject;
	function clone(?recursive:Bool):ImmediateRenderObject;
	function copy(source:ImmediateRenderObject, ?recursive:Bool):ImmediateRenderObject;
	static var prototype : ImmediateRenderObject;
}