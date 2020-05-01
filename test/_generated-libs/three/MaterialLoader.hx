package three;
@:jsRequire("three", "MaterialLoader") extern class MaterialLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var textures : { };
	function load(url:String, onLoad:(material:Material) -> Void, ?onProgress:(event:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.AnyOf2<ts.html.IErrorEvent, ts.lib.IError>) -> Void):Void;
	function setTextures(textures:{ }):Void;
	function getTexture(name:String):Texture;
	function parse(json:Any):Material;
}