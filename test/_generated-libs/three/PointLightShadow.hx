package three;
@:jsRequire("three", "PointLightShadow") extern class PointLightShadow {
	var camera : PerspectiveCamera;
	var bias : Float;
	var radius : Float;
	var mapSize : Vector2;
	var map : RenderTarget;
	var matrix : Matrix4;
	function copy(source:LightShadow):PointLightShadow;
	function clone(?recursive:Bool):PointLightShadow;
	function toJSON():Any;
}