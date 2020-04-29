package three;
@:jsRequire("three", "MaterialLoader") extern class MaterialLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var textures : { };
	function load(url:String, onLoad:(material:Material) -> Void, ?onProgress:(event:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:haxe.extern.EitherType<js.html.IErrorEvent, js.lib.IError>) -> Void):Void;
	function setTextures(textures:{ }):Void;
	function getTexture(name:String):Texture;
	function parse(json:Any):Material;
}