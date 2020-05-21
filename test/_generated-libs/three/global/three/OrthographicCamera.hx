package global.three;

/**
	Camera with orthographic projection
**/
@:native("THREE.OrthographicCamera") extern class OrthographicCamera extends Camera {
	function new(left:Float, right:Float, top:Float, bottom:Float, ?near:Float, ?far:Float);
	var isOrthographicCamera : Bool;
	var zoom : Float;
	var view : Null<{
		var enabled : Bool;
		var fullWidth : Float;
		var fullHeight : Float;
		var offsetX : Float;
		var offsetY : Float;
		var width : Float;
		var height : Float;
	}>;
	/**
		Camera frustum left plane.
	**/
	var left : Float;
	/**
		Camera frustum right plane.
	**/
	var right : Float;
	/**
		Camera frustum top plane.
	**/
	var top : Float;
	/**
		Camera frustum bottom plane.
	**/
	var bottom : Float;
	/**
		Camera frustum near plane.
	**/
	var near : Float;
	/**
		Camera frustum far plane.
	**/
	var far : Float;
	/**
		Updates the camera projection matrix. Must be called after change of parameters.
	**/
	function updateProjectionMatrix():Void;
	function setViewOffset(fullWidth:Float, fullHeight:Float, offsetX:Float, offsetY:Float, width:Float, height:Float):Void;
	function clearViewOffset():Void;
	function toJSON(?meta:Dynamic):Dynamic;
	function applyQuaternion(quaternion:Quaternion):OrthographicCamera;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):OrthographicCamera;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):OrthographicCamera;
	function rotateX(angle:Float):OrthographicCamera;
	function rotateY(angle:Float):OrthographicCamera;
	function rotateZ(angle:Float):OrthographicCamera;
	function translateOnAxis(axis:Vector3, distance:Float):OrthographicCamera;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):OrthographicCamera;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):OrthographicCamera;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):OrthographicCamera;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):OrthographicCamera;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):OrthographicCamera;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):OrthographicCamera;
	function clone(?recursive:Bool):OrthographicCamera;
	function copy(source:OrthographicCamera, ?recursive:Bool):OrthographicCamera;
	static var prototype : OrthographicCamera;
}