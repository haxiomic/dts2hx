package three;
@:jsRequire("three", "SpotLightShadow") extern class SpotLightShadow {
	var camera : PerspectiveCamera;
	function update(light:Light):Void;
	var bias : Float;
	var radius : Float;
	var mapSize : Vector2;
	var map : RenderTarget;
	var matrix : Matrix4;
	function copy(source:LightShadow):SpotLightShadow;
	function clone(?recursive:Bool):SpotLightShadow;
	function toJSON():Any;
}