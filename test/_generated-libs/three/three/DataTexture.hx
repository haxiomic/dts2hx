package three;
@:jsRequire("three", "DataTexture") extern class DataTexture {
	function new(data:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, js.lib.IFloat64Array>>>>>>>>, width:Float, height:Float, ?format:PixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float, ?encoding:TextureEncoding);
	var image : js.html.IImageData;
	var id : Float;
	var uuid : String;
	var name : String;
	var sourceFile : String;
	var mipmaps : std.Array<js.html.IImageData>;
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
	var onUpdate : () -> Void;
	function clone():Texture;
	function copy(source:Texture):Texture;
	function toJSON(meta:Any):Any;
	function dispose():Void;
	function transformUv(uv:Vector):Void;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener(type:String, listener:(event:Event) -> Void):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Fire an event type.
	**/
	function dispatchEvent(event:{ var type : String; }):Void;
}