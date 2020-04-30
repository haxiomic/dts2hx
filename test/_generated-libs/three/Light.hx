package three;
/**
	Abstract base class for lights.
**/
@:jsRequire("three", "Light") extern class Light extends Object3D {
	function new(?hex:haxe.extern.EitherType<String, Float>, ?intensity:Float);
	var color : Color;
	var intensity : Float;
	var isLight : Bool;
	var shadow : LightShadow;
	var shadowCameraFov : Any;
	var shadowCameraLeft : Any;
	var shadowCameraRight : Any;
	var shadowCameraTop : Any;
	var shadowCameraBottom : Any;
	var shadowCameraNear : Any;
	var shadowCameraFar : Any;
	var shadowBias : Any;
	var shadowMapWidth : Any;
	var shadowMapHeight : Any;
}