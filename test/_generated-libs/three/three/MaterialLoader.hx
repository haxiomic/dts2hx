package three;

@:jsRequire("three", "MaterialLoader") extern class MaterialLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var textures : haxe.DynamicAccess<Texture>;
	function load(url:String, onLoad:(material:Material) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:ts.AnyOf2<js.html.ErrorEvent, js.lib.Error>) -> Void):Void;
	function setTextures(textures:haxe.DynamicAccess<Texture>):Void;
	function getTexture(name:String):Texture;
	function parse(json:Dynamic):Material;
	static var prototype : MaterialLoader;
}