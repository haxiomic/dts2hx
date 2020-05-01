package three;
@:jsRequire("three", "CubeTexture") extern class CubeTexture extends Texture {
	function new(?images:std.Array<Dynamic>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float, ?encoding:TextureEncoding);
	var images : Dynamic;
}