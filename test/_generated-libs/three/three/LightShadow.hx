package three;

@:jsRequire("three", "LightShadow") extern class LightShadow {
	function new(camera:Camera);
	var camera : Camera;
	var bias : Float;
	var radius : Float;
	var mapSize : Vector2;
	var map : RenderTarget;
	var matrix : Matrix4;
	function copy(source:LightShadow):LightShadow;
	function clone(?recursive:Bool):LightShadow;
	function toJSON():Dynamic;
	static var prototype : LightShadow;
}