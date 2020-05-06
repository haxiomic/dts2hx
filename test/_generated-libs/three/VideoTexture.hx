package three;
@:jsRequire("three", "VideoTexture") extern class VideoTexture extends Texture {
	function new(video:ts.html.IHTMLVideoElement, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
	function clone():VideoTexture;
	function copy(source:Texture):VideoTexture;
}