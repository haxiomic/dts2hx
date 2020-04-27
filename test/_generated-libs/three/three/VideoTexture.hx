package three;
@:jsRequire("three", "VideoTexture") extern class VideoTexture extends Texture {
	function new(video:js.html.HTMLVideoElement, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
}