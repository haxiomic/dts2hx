package three;
/**
	Abstract base class for lights.
**/
@:jsRequire("three", "Light") extern class Light extends Object3D {
	function new(?hex:ts.AnyOf2<String, Float>, ?intensity:Float);
	var color : Color;
	var intensity : Float;
	var isLight : Bool;
	var shadow : LightShadow;
	var shadowCameraFov : Dynamic;
	var shadowCameraLeft : Dynamic;
	var shadowCameraRight : Dynamic;
	var shadowCameraTop : Dynamic;
	var shadowCameraBottom : Dynamic;
	var shadowCameraNear : Dynamic;
	var shadowCameraFar : Dynamic;
	var shadowBias : Dynamic;
	var shadowMapWidth : Dynamic;
	var shadowMapHeight : Dynamic;
}