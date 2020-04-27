package js.html;
extern interface CanvasDrawImage {
	@:overload(function(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	@:overload(function(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, dw:Float, dh:Float):Void { })
	function drawImage(image:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<OffscreenCanvas, haxe.extern.EitherType<ImageBitmap, SVGImageElement>>>>>, dx:Float, dy:Float):Void;
}