package three;

@:jsRequire("three", "CompressedTexture") extern class CompressedTexture extends Texture {
	function new(mipmaps:Array<js.html.ImageData>, width:Float, height:Float, ?format:CompressedPixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float, ?encoding:TextureEncoding);
	function clone():CompressedTexture;
	function copy(source:Texture):CompressedTexture;
	static var prototype : CompressedTexture;
}