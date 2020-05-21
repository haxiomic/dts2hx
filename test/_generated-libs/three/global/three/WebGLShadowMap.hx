package global.three;

@:native("THREE.WebGLShadowMap") extern class WebGLShadowMap {
	function new(_renderer:WebGLRenderer, _lights:Array<Dynamic>, _objects:Array<Dynamic>, capabilities:Dynamic);
	var enabled : Bool;
	var autoUpdate : Bool;
	var needsUpdate : Bool;
	var type : ShadowMapType;
	function render(scene:Scene, camera:Camera):Void;
	var cullFace : Dynamic;
	static var prototype : WebGLShadowMap;
}