package three;

@:jsRequire("three", "ObjectLoader") extern class ObjectLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	var texturePass : String;
	var crossOrigin : String;
	function load(url:String, ?onLoad:(object:Any) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:ts.AnyOf2<js.html.ErrorEvent, js.lib.Error>) -> Void):Void;
	function setTexturePath(value:String):Void;
	function setCrossOrigin(crossOrigin:String):Void;
	function parse<T>(json:Dynamic, ?onLoad:(object:Object3D) -> Void):T;
	function parseGeometries(json:Dynamic):Array<Dynamic>;
	function parseMaterials(json:Dynamic, textures:Array<Texture>):Array<Material>;
	function parseAnimations(json:Dynamic):Array<AnimationClip>;
	function parseImages(json:Dynamic, onLoad:() -> Void):haxe.DynamicAccess<js.html.ImageElement>;
	function parseTextures(json:Dynamic, images:Dynamic):Array<Texture>;
	function parseObject<T>(data:Dynamic, geometries:Array<Dynamic>, materials:Array<Material>):T;
	static var prototype : ObjectLoader;
}