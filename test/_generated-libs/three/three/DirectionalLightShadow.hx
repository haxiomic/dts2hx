package three;
@:jsRequire("three", "DirectionalLightShadow") extern class DirectionalLightShadow {
	var camera : OrthographicCamera;
	var bias : Float;
	var radius : Float;
	var mapSize : Vector2;
	var map : RenderTarget;
	var matrix : Matrix4;
	function copy(source:LightShadow):LightShadow;
	function clone(?recursive:Bool):LightShadow;
	function toJSON():Any;
}