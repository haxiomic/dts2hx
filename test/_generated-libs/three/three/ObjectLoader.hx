package three;
@:jsRequire("three", "ObjectLoader") extern class ObjectLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var texturePass : String;
	var crossOrigin : String;
	function load(url:String, ?onLoad:(object:Any) -> Void, ?onProgress:(event:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:haxe.extern.EitherType<js.html.IErrorEvent, js.lib.IError>) -> Void):Void;
	function setTexturePath(value:String):Void;
	function setCrossOrigin(crossOrigin:String):Void;
	function parse<T:(Object3D)>(json:Any, ?onLoad:(object:Object3D) -> Void):T;
	function parseGeometries(json:Any):std.Array<Any>;
	function parseMaterials(json:Any, textures:std.Array<Texture>):std.Array<Material>;
	function parseAnimations(json:Any):std.Array<AnimationClip>;
	function parseImages(json:Any, onLoad:() -> Void):{ };
	function parseTextures(json:Any, images:Any):std.Array<Texture>;
	function parseObject<T:(Object3D)>(data:Any, geometries:std.Array<Any>, materials:std.Array<Material>):T;
}