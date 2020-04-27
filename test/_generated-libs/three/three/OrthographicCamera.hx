package three;
/**
	Camera with orthographic projection
**/
@:jsRequire("three", "OrthographicCamera") extern class OrthographicCamera extends Camera {
	function new(left:Float, right:Float, top:Float, bottom:Float, ?near:Float, ?far:Float);
	var type : String;
	var isOrthographicCamera : Bool;
	var zoom : Float;
	var view : Null<{ var enabled : Bool; var fullWidth : Float; var fullHeight : Float; var offsetX : Float; var offsetY : Float; var width : Float; var height : Float; }>;
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
	function toJSON(?meta:Any):Any;
}