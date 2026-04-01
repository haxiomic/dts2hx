package three;

@:jsRequire("three", "Texture") extern class Texture extends EventDispatcher {
	function new(?image:ts.AnyOf3<js.html.CanvasElement, js.html.ImageElement, js.html.VideoElement>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float, ?encoding:TextureEncoding);
	var id : Float;
	var uuid : String;
	var name : String;
	var sourceFile : String;
	var image : Dynamic;
	var mipmaps : Array<js.html.ImageData>;
	var mapping : Mapping;
	var wrapS : Wrapping;
	var wrapT : Wrapping;
	var magFilter : TextureFilter;
	var minFilter : TextureFilter;
	var anisotropy : Float;
	var format : PixelFormat;
	var type : TextureDataType;
	var offset : Vector2;
	var repeat : Vector2;
	var center : Vector2;
	var rotation : Float;
	var generateMipmaps : Bool;
	var premultiplyAlpha : Bool;
	var flipY : Bool;
	var unpackAlignment : Float;
	var encoding : TextureEncoding;
	var version : Float;
	var needsUpdate : Bool;
	dynamic function onUpdate():Void;
	function clone():Texture;
	function copy(source:Texture):Texture;
	function toJSON(meta:Dynamic):Dynamic;
	function dispose():Void;
	function transformUv(uv:Vector):Void;
	static var prototype : Texture;
	static var DEFAULT_IMAGE : Dynamic;
	static var DEFAULT_MAPPING : Dynamic;
}