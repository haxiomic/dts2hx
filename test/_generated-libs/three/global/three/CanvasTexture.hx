package global.three;

@:native("THREE.CanvasTexture") extern class CanvasTexture extends Texture {
	function new(canvas:ts.AnyOf3<js.html.ImageElement, js.html.VideoElement, js.html.CanvasElement>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
	function clone():CanvasTexture;
	function copy(source:Texture):CanvasTexture;
	static var prototype : CanvasTexture;
}