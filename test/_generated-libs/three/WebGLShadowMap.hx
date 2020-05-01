package three;
@:jsRequire("three", "WebGLShadowMap") extern class WebGLShadowMap {
	function new(_renderer:WebGLRenderer, _lights:std.Array<Dynamic>, _objects:std.Array<Dynamic>, capabilities:Dynamic);
	var enabled : Bool;
	var autoUpdate : Bool;
	var needsUpdate : Bool;
	var type : ShadowMapType;
	function render(scene:Scene, camera:Camera):Void;
	var cullFace : Dynamic;
}