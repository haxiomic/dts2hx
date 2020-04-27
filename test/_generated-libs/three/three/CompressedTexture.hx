package three;
@:jsRequire("three", "CompressedTexture") extern class CompressedTexture extends Texture {
	function new(mipmaps:std.Array<js.html.ImageData>, width:Float, height:Float, ?format:CompressedPixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float, ?encoding:TextureEncoding);
	var image : { var width : Float; var height : Float; };
}