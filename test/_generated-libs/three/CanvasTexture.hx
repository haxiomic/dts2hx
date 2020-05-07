package three;
@:jsRequire("three", "CanvasTexture") extern class CanvasTexture extends Texture {
	function new(canvas:ts.AnyOf3<ts.html.HTMLCanvasElement, ts.html.HTMLVideoElement, ts.html.HTMLImageElement>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
	function clone():CanvasTexture;
	function copy(source:Texture):CanvasTexture;
}