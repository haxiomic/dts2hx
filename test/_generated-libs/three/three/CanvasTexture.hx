package three;
@:jsRequire("three", "CanvasTexture") extern class CanvasTexture extends Texture {
	function new(canvas:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, js.html.HTMLImageElement>>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
}