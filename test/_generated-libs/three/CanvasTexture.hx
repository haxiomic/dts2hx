package three;
@:jsRequire("three", "CanvasTexture") extern class CanvasTexture extends Texture {
	function new(canvas:haxe.extern.EitherType<ts.html.IHTMLCanvasElement, haxe.extern.EitherType<ts.html.IHTMLVideoElement, ts.html.IHTMLImageElement>>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
}