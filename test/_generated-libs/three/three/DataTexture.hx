package three;

@:jsRequire("three", "DataTexture") extern class DataTexture extends Texture {
	function new(data:TypedArray, width:Float, height:Float, ?format:PixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float, ?encoding:TextureEncoding);
	function clone():DataTexture;
	function copy(source:Texture):DataTexture;
	static var prototype : DataTexture;
}