package three;
@:jsRequire("three", "ObjectLoader") extern class ObjectLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var texturePass : String;
	var crossOrigin : String;
	function load(url:String, ?onLoad:(object:Any) -> Void, ?onProgress:(event:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.AnyOf2<ts.html.IErrorEvent, ts.lib.IError>) -> Void):Void;
	function setTexturePath(value:String):Void;
	function setCrossOrigin(crossOrigin:String):Void;
	function parse<T>(json:Dynamic, ?onLoad:(object:Object3D) -> Void):T;
	function parseGeometries(json:Dynamic):std.Array<Dynamic>;
	function parseMaterials(json:Dynamic, textures:std.Array<Texture>):std.Array<Material>;
	function parseAnimations(json:Dynamic):std.Array<AnimationClip>;
	function parseImages(json:Dynamic, onLoad:() -> Void):{ };
	function parseTextures(json:Dynamic, images:Dynamic):std.Array<Texture>;
	function parseObject<T>(data:Dynamic, geometries:std.Array<Dynamic>, materials:std.Array<Material>):T;
}