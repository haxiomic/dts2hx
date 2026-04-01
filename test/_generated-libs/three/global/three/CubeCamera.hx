package global.three;

@:native("THREE.CubeCamera") extern class CubeCamera extends Object3D {
	function new(?near:Float, ?far:Float, ?cubeResolution:Float);
	var renderTarget : WebGLRenderTargetCube;
	function update(renderer:WebGLRenderer, scene:Scene):Void;
	function clear(renderer:WebGLRenderer, color:Bool, depth:Bool, stencil:Bool):Void;
	function applyQuaternion(quaternion:Quaternion):CubeCamera;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):CubeCamera;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):CubeCamera;
	function rotateX(angle:Float):CubeCamera;
	function rotateY(angle:Float):CubeCamera;
	function rotateZ(angle:Float):CubeCamera;
	function translateOnAxis(axis:Vector3, distance:Float):CubeCamera;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):CubeCamera;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):CubeCamera;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):CubeCamera;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):CubeCamera;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):CubeCamera;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):CubeCamera;
	function clone(?recursive:Bool):CubeCamera;
	function copy(source:CubeCamera, ?recursive:Bool):CubeCamera;
	static var prototype : CubeCamera;
}